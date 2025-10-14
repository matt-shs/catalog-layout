const IMAGE_PATH = "images/";
const fallbackImage = "noimage.svg";
const cardsContainer = document.getElementById("cardsContainer");
const inputCardsPerRow = document.getElementById("cardsPerRow");
const inputHeaderHeight = document.getElementById("headerHeight");
const statusLine = document.getElementById("statusLine");

let cachedProducts = null;
let cards = [];

function getDynamicFontSize(cardsPerRow) {
  if (cardsPerRow <= 2) return 18;
  if (cardsPerRow <= 4) return 14;
  if (cardsPerRow <= 6) return 10;
  return 10;
}

function updateCardLayout() {
  const cardsPerRow = Math.min(
    Math.max(parseInt(inputCardsPerRow.value) || 1, 1),
    8
  );
  const gap = 10;
  const containerWidth = Math.min(window.innerWidth - 40, 1200);
  const cardWidth = (containerWidth - gap * (cardsPerRow - 1)) / cardsPerRow;
  const baseFontSize = getDynamicFontSize(cardsPerRow);
  const imgHeight = Math.max(80, Math.round(cardWidth * 0.6));

  cards.forEach((card) => {
    card.style.width = cardWidth + "px";
    const img = card.querySelector("img");
    if (img) img.style.height = imgHeight + "px";
    card
      .querySelectorAll(".meta")
      .forEach((p) => (p.style.fontSize = baseFontSize + "px"));
  });

  cardsContainer.style.width = containerWidth + "px";
}

window.addEventListener("resize", updateCardLayout);
inputCardsPerRow.addEventListener("input", updateCardLayout);

// Preload image helper
async function preloadImage(src) {
  return new Promise((resolve) => {
    const img = new Image();
    img.crossOrigin = "anonymous";
    img.src = src;
    img.onload = () => resolve(src);
    img.onerror = () => resolve(fallbackImage);
  });
}

// Render cards
function createCardsFromJson(dataArray) {
  cardsContainer.innerHTML = "";
  cards = [];

  dataArray.forEach((item) => {
    const card = document.createElement("div");
    card.className = "card";

    const img = document.createElement("img");
    img.src = fallbackImage;
    card.dataset.image = IMAGE_PATH + (item.picturename || "");
    preloadImage(card.dataset.image)
      .then((realSrc) => {
        img.src = realSrc;
        card.dataset.image = realSrc;
      })
      .catch(() => {
        img.src = fallbackImage;
      });

    card.appendChild(img);

    const metaContainer = document.createElement("div");
    metaContainer.className = "meta-container";

    // Loop through all variants found for this product group and create a line for each
    (item.variants || []).forEach(variant => {
        const metaText = document.createElement("p");
        metaText.className = "meta";
        // Display SKU (bolded), Size, and Material for the variant
        metaText.innerHTML = `<span class="meta__part">${variant.sku}</span>${variant.size} ${variant.material}`;
        metaContainer.appendChild(metaText);
    });

    card.appendChild(metaContainer);
    cardsContainer.appendChild(card);
    cards.push(card);
  });

  updateCardLayout();
}

// Lookup SKUs
async function loadProductsJson() {
  if (cachedProducts) return cachedProducts;
  try {
    const resp = await fetch("products.json");
    if (!resp.ok) throw new Error("failed to fetch products.json");
    const json = await resp.json();
    cachedProducts = Array.isArray(json) ? json : json.products || [];
    return cachedProducts;
  } catch (err) {
    cachedProducts = [];
    Swal.fire({
      toast: true,
      position: "bottom-end",
      icon: "error",
      title: "Failed to load products.json",
      showConfirmButton: false,
      timer: 2000,
      timerProgressBar: true,
    });
    return cachedProducts;
  }
}

const input = document.getElementById("skuInput");
const tagify = new Tagify(input, {
  delimiters: /[,|\n|\r]/,
  maxTags: 500,
  duplicate: false,
});

input.addEventListener("paste", (e) => {
  e.preventDefault();
  const paste = (e.clipboardData || window.clipboardData).getData("text");
  const items = [
    ...new Set(
      paste
        .split(/[\n\r,]+/)
        .map((s) => s.trim())
        .filter(Boolean)
    ),
  ];
  tagify.addTags(items);
});

async function lookupSKUs() {
  const skus = tagify.value
    .map((t) => t.value.trim().toUpperCase())
    .slice(0, 500);

  if (skus.length === 0) {
    cardsContainer.innerHTML = "";
    cards = [];
    statusLine.textContent = "No SKUs entered. Enter SKUs and press Lookup.";
    return;
  }

  statusLine.textContent = "Searching for products...";

  const products = await loadProductsJson();

  if (!products.length) {
    createCardsFromJson([]);
    statusLine.textContent = "No product data is available to search against.";
    return;
  }

  const map = new Map();
  products.forEach((p) => map.set(String(p.sku).toUpperCase(), p));

  // Map to hold the final grouped products. 
  // Key: normalized producttitle, Value: {representativeProduct, variants: []}
  const finalResults = new Map(); 
  const notFound = [];

  skus.forEach((sku) => {
    const p = map.get(sku);

    if (p) {
      const title = p.producttitle.trim().toUpperCase();
      
      const variantData = {
          sku: p.sku,
          size: p.size || '',
          material: p.material || ''
      };

      if (!finalResults.has(title)) {
        // First time seeing this title. Set up the representative product structure, 
        // using the first variant's image/details as the card basis.
        finalResults.set(title, {
            ...p, 
            variants: [] // Initialize variants array
        });
      }
      
      // Add the requested variant to the list for this product group
      finalResults.get(title).variants.push(variantData);

    } else {
      notFound.push(sku);
    }
  });
  
  const found = Array.from(finalResults.values()); // Array of grouped product objects

  createCardsFromJson(found); // Pass the full grouped structure

  const titleCount = found.length;
  let statusText = `${titleCount} unique product group(s) found based on title.`;

  if (notFound.length) {
    statusText += ` SKUs not found (${notFound.length}): ${notFound.join(", ")}`;
  } else if (titleCount < skus.length) {
    const groupedCount = skus.length - titleCount;
    statusText += ` (${groupedCount} duplicate variants were grouped.)`;
  }

  statusLine.textContent = statusText;
}

document.getElementById("copyBtn").addEventListener("click", async () => {
  const skus = tagify.value.map((t) => t.value).join(", ");
  if (!skus) {
    Swal.fire({
      toast: true,
      position: "bottom-end",
      icon: "info",
      title: "Nothing to copy",
      showConfirmButton: false,
      timer: 2000,
      timerProgressBar: true,
    });
    return;
  }
  try {
    // Fallback copy logic included for sandbox environments
    const success = await new Promise((resolve, reject) => {
        if (navigator.clipboard && navigator.clipboard.writeText) {
            navigator.clipboard.writeText(skus).then(() => resolve(true)).catch(reject);
        } else {
            const textarea = document.createElement('textarea');
            textarea.value = skus;
            textarea.style.position = 'fixed';
            document.body.appendChild(textarea);
            textarea.select();
            try {
                document.execCommand('copy');
                resolve(true);
            } catch (err) {
                reject(err);
            } finally {
                document.body.removeChild(textarea);
            }
        }
    });

    if (success) {
      Swal.fire({
        toast: true,
        position: "bottom-end",
        icon: "success",
        title: "Copied!",
        showConfirmButton: false,
        timer: 2000,
        timerProgressBar: true,
      });
    }
  } catch (err) {
    console.error("copy failed", err);
  }
});

document.getElementById("clearBtn").addEventListener("click", () => {
  tagify.removeAllTags();
  cardsContainer.innerHTML = "";
  cards = [];
  statusLine.textContent = "No products loaded.";
});

document.getElementById("lookupBtn").addEventListener("click", lookupSKUs);
input.addEventListener("keydown", (e) => {
  if (e.key === "Enter" && !e.shiftKey) {
    e.preventDefault();
    lookupSKUs();
  }
});

// ---------- PDF Export ----------
async function getImageBuffer(src, cardWidthPdf, imgMaxHeightPdf) {
  try {
    const extension = (src.split(".").pop() || "").toLowerCase();
    if (extension === "svg") {
      const svgText = await fetch(src).then((r) => r.text());
      return new Promise((resolve) => {
        const img = new Image();
        img.onload = () => {
          const aspect = img.naturalHeight / img.naturalWidth || 1;
          let width = cardWidthPdf,
            height = width * aspect;
          if (height > imgMaxHeightPdf) {
            height = imgMaxHeightPdf;
            width = height / aspect;
          }
          const canvas = document.createElement("canvas");
          canvas.width = Math.round(width * 6);
          canvas.height = Math.round(height * 6);
          const ctx = canvas.getContext("2d");
          ctx.scale(6, 6);
          ctx.drawImage(img, 0, 0, width, height);
          canvas.toBlob((blob) => {
            const reader = new FileReader();
            reader.onload = () => resolve(reader.result);
            reader.readAsArrayBuffer(blob);
          }, "image/png");
        };
        img.onerror = () =>
          fetch(fallbackImage)
            .then((r) => r.arrayBuffer())
            .then((arr) => resolve(arr));
        img.src = "data:image/svg+xml;base64," + btoa(svgText);
      });
    } else {
      return await fetch(src).then((r) => r.arrayBuffer());
    }
  } catch (err) {
    return await fetch(fallbackImage).then((r) => r.arrayBuffer());
  }
}

document.getElementById("exportPdf").addEventListener("click", async () => {
  const exportButton = document.getElementById("exportPdf");
  exportButton.textContent = "Exporting";
  const spinner = document.createElement("span");
  spinner.className = "spinner";
  exportButton.appendChild(spinner);
  exportButton.disabled = true;

  try {
    const { PDFDocument, StandardFonts, rgb } = PDFLib;
    const pdfDoc = await PDFDocument.create();

    const pageWidth = 590,
      pageHeight = 840; // A4-ish
    const margin = 50,
      gap = 10,
      padding = 5;
    const scaleFactor = 1; // scale cards slightly

    const fontRegular = await pdfDoc.embedFont(StandardFonts.Helvetica);
    const fontBold = await pdfDoc.embedFont(StandardFonts.HelveticaBold);

    const cardsPerRow = Math.min(
      Math.max(parseInt(inputCardsPerRow.value) || 1, 1),
      8
    );
    const headerRows = Math.max(parseInt(inputHeaderHeight.value) || 0, 0);
    const headerType = document.querySelector(
      'input[name="headerType"]:checked'
    ).value; // 'odd' or 'even'

    if (!cards.length) {
      Swal.fire({
        toast: true,
        position: "bottom-end",
        icon: "info",
        title: "No cards to export",
        showConfirmButton: false,
        timer: 1500,
        timerProgressBar: true,
      });
      return;
    }

    // --- Calculate the maximum number of text lines needed per card ---
    let maxLinesPerCard = 1; 
    cards.forEach(card => {
        // Count how many <p class="meta"> elements were generated for variants
        const lineCount = card.querySelectorAll(".meta").length;
        if (lineCount > maxLinesPerCard) {
            maxLinesPerCard = lineCount;
        }
    });

    const baseCardWidth =
      (pageWidth - margin * 2 - gap * (cardsPerRow - 1)) / cardsPerRow;
    const cardWidthPdf = baseCardWidth * scaleFactor;
    const imgMaxHeightPdf = cardWidthPdf * 0.6;

    const sampleScreenWidth = Math.max(
      100,
      cards[0].getBoundingClientRect().width
    );
    const screenFontSize = getDynamicFontSize(cardsPerRow);
    const pdfFontSize = Math.max(
      8,
      Math.round(screenFontSize * (cardWidthPdf / sampleScreenWidth))
    );
    
    // --- Use maxLinesPerCard for row height calculation ---
    const textLineHeight = pdfFontSize * 1.2;
    const cardContainerHeight = imgMaxHeightPdf + maxLinesPerCard * textLineHeight + padding * 2;
    const rowHeight = cardContainerHeight;

    const imageBuffers = await Promise.all(
      cards.map((card) =>
        getImageBuffer(
          card.dataset.image || fallbackImage,
          cardWidthPdf,
          imgMaxHeightPdf
        )
      )
    );

    let page = pdfDoc.addPage([pageWidth, pageHeight]);
    let yOffset = pageHeight - margin;
    
    let pageIndex = 1; // start at 1
    for (let i = 0; i < cards.length; i += cardsPerRow) {
      let rowCards = cards.slice(i, i + cardsPerRow);
      if (rowCards.length < cardsPerRow) {
        const missing = cardsPerRow - rowCards.length;
        for (let m = 0; m < missing; m++) rowCards.push(null); // blank placeholder
      }

      // Determine if header should be applied on this page
      const isHeaderPage =
        headerRows > 0 &&
        ((headerType === "odd" && pageIndex % 2 === 1) ||
          (headerType === "even" && pageIndex % 2 === 0));

      if (isHeaderPage && yOffset === pageHeight - margin) {
        yOffset -= rowHeight * headerRows;
      }

      // When adding a new page
      if (yOffset - rowHeight < margin) {
        page = pdfDoc.addPage([pageWidth, pageHeight]);
        yOffset = pageHeight - margin;
        pageIndex++;

        const isHeaderPageNext =
          headerRows > 0 &&
          ((headerType === "odd" && pageIndex % 2 === 1) ||
            (headerType === "even" && pageIndex % 2 === 0));
        if (isHeaderPageNext) {
          yOffset -= rowHeight * headerRows;
        }
      }

      const rowWidth =
        rowCards.length * cardWidthPdf + (rowCards.length - 1) * gap;
      const containerX = (pageWidth - rowWidth) / 2;

      for (let j = 0; j < rowCards.length; j++) {
        const card = rowCards[j];
        const xOffset = containerX + j * (cardWidthPdf + gap);

        if (card) {
          const buffer = imageBuffers[cards.indexOf(card)];
          if (buffer) {
            let image;
            const fileName = card.dataset.image.toLowerCase();
            if (
              fileName.endsWith(".svg") ||
              fileName.endsWith(".png") ||
              fileName.endsWith(".bmp")
            )
              image = await pdfDoc.embedPng(buffer);
            else if (fileName.endsWith(".jpg") || fileName.endsWith(".jpeg"))
              image = await pdfDoc.embedJpg(buffer);

            if (image) {
              const aspect = image.height / image.width;
              let imgWidthPdf = cardWidthPdf;
              let imgHeightPdf = imgWidthPdf * aspect;
              if (imgHeightPdf > imgMaxHeightPdf) {
                imgHeightPdf = imgMaxHeightPdf;
                imgWidthPdf = imgHeightPdf / aspect;
              }
              const xImage = xOffset + (cardWidthPdf - imgWidthPdf) / 2;
              page.drawImage(image, {
                x: xImage,
                y: yOffset - imgHeightPdf - padding,
                width: imgWidthPdf,
                height: imgHeightPdf,
              });
            }
          }

          // --- Draw Text (Metadata) for all variants ---
          const paragraphs = Array.from(card.querySelectorAll(".meta"));
          
          // Calculate the Y coordinate for the baseline of the first line of text.
          // Start from the bottom of the image area (`yOffset - imgMaxHeightPdf - padding`) 
          // and move down by one line height to find the baseline of the first line.
          let currentTextY = yOffset - imgMaxHeightPdf - padding - textLineHeight; 

          paragraphs.forEach((p) => {
            const spans = p.querySelectorAll(".meta__part");
            let lineWidth = 0;
            spans.forEach(
              (span) =>
              (lineWidth +=
                fontBold.widthOfTextAtSize(span.textContent, pdfFontSize) + 4)
            );
            const remainingText = p.textContent.replace(
              Array.from(spans)
                .map((s) => s.textContent)
                .join(""),
              ""
            );
            if (remainingText.trim() !== "")
              lineWidth += fontRegular.widthOfTextAtSize(
                remainingText,
                pdfFontSize
              );

            const xTextStart = xOffset + (cardWidthPdf - lineWidth) / 2;
            let currentX = xTextStart;

            spans.forEach((span) => {
              page.drawText(span.textContent, {
                x: currentX,
                y: currentTextY,
                size: pdfFontSize,
                font: fontBold,
                color: rgb(0, 0, 0),
              });
              currentX +=
                fontBold.widthOfTextAtSize(span.textContent, pdfFontSize) + 4;
            });
            if (remainingText.trim() !== "") {
              page.drawText(remainingText, {
                x: currentX,
                y: currentTextY,
                size: pdfFontSize,
                font: fontRegular,
                color: rgb(0, 0, 0),
              });
            }
            
            // Move the Y baseline position up for the next variant line
            currentTextY -= textLineHeight; 
          });
        }
      }

      yOffset -= rowHeight + gap;
    }

    const pdfBytes = await pdfDoc.save();
    const blob = new Blob([pdfBytes], { type: "application/pdf" });
    const link = document.createElement("a");
    link.href = URL.createObjectURL(blob);
    link.download = "cards.pdf";
    link.click();
  } finally {
    exportButton.textContent = "Export PDF";
    exportButton.disabled = false;
    const spinnerEl = exportButton.querySelector(".spinner");
    if (spinnerEl) spinnerEl.remove();
  }
});
