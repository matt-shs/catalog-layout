const IMAGE_PATH = "images/";
const fallbackImage = "noimage.svg";
const cardsContainer = document.getElementById("cardsContainer");
const inputCardsPerRow = document.getElementById("cardsPerRow");
// inputHeaderHeight is now obsolete, but kept for element retrieval compatibility
const inputHeaderHeight = document.getElementById("headerHeight"); 
const statusLine = document.getElementById("statusLine");

let cachedProducts = null;
let cards = [];
let groupedCardsByHtml = []; // Stores the structure for HTML rendering

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

  // Corrected floating logic using index in 'cards' array
  cards.forEach((card, index) => {
    card.style.width = cardWidth + "px";
    
    // Ensure cards are always floating left
    card.style.float = 'left'; 
    
    // Calculate if it's the last card in the row (using the index from the 'cards' array)
    // NOTE: This index is relative to the entire 'cards' array, not the cardGroup, but
    // the margins will still work correctly based on the 'cardsPerRow' setting.
    const isLastInRow = (index + 1) % cardsPerRow === 0;
    
    // Set right margin: 0 for last card, 'gap' for others
    card.style.marginRight = isLastInRow ? '0' : gap + 'px';
    
    // Always set bottom margin to ensure vertical spacing
    card.style.marginBottom = gap + 'px'; 

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
  groupedCardsByHtml = [];

  // Group the data by category for display
  const categories = dataArray.reduce((acc, item) => {
    const category = item.category || "Uncategorized";
    if (!acc[category]) {
      acc[category] = [];
    }
    acc[category].push(item);
    return acc;
  }, {});

  // Determine the desired display order (Category then Product Title)
  const sortedCategories = Object.keys(categories).sort();

  sortedCategories.forEach((category) => {
    // 1. Create Category Header for HTML display
    const categoryHeader = document.createElement("h3");
    categoryHeader.className = "category-header";
    categoryHeader.textContent = category;
    // Set to clear both and take full width (though h3 is block already)
    categoryHeader.style.cssText = "clear: both; margin-top: 30px; margin-bottom: 15px; font-weight: bold; font-size: 1.5rem; display: block; width: 100%;";
    cardsContainer.appendChild(categoryHeader);
    
    // NEW: Create a container for the floating cards in this category
    // Using overflow: hidden is a common 'clearfix' technique to contain floats
    const cardGroup = document.createElement("div");
    cardGroup.className = "card-group";
    cardGroup.style.cssText = "overflow: hidden; width: 100%;";
    cardsContainer.appendChild(cardGroup);


    // 2. Iterate through products in this category (already sorted by title from lookupSKUs)
    categories[category].forEach((item) => {
      const card = document.createElement("div");
      card.className = "card";

      const img = document.createElement("img");
      img.src = fallbackImage;
      card.dataset.image = IMAGE_PATH + (item.picturename || "");
      
      // Attach product metadata to the card element for PDF export
      card.dataset.title = item.producttitle || '';
      card.dataset.category = item.category || 'Uncategorized'; // Storing category again for PDF check

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

      // Display Product Title above variants (We keep this for on-screen visibility)
      const titleText = document.createElement("p");
      titleText.className = "meta meta-title";
      titleText.innerHTML = `<strong>${item.producttitle}</strong>`;
      metaContainer.appendChild(titleText);

      // Loop through all variants found for this product group and create a line for each
      (item.variants || []).forEach(variant => {
          const metaText = document.createElement("p");
          metaText.className = "meta";
          // Display SKU (bolded) and other details for the variant
          metaText.innerHTML = `<span class="meta__part">${variant.sku}</span>${variant.size} ${variant.material}`;
          metaContainer.appendChild(metaText);
      });

      card.appendChild(metaContainer);
      cardGroup.appendChild(card); // Append card to the new cardGroup
      cards.push(card);
      groupedCardsByHtml.push(card); // Store cards in rendering order for PDF index tracking
    });

    // Separator for clear visual break on the HTML screen after all cards in the category
    // This element will now reliably clear the floats inside the 'cardGroup' container
    const groupEnd = document.createElement("div");
    // Use clear:both and a high visibility style to ensure the break is enforced and seen.
    groupEnd.style.cssText = "clear: both; height: 40px; border-bottom: 4px solid #2563eb; margin-top: 20px; margin-bottom: 40px;";
    cardsContainer.appendChild(groupEnd);
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
        // ensuring the category is available for later sorting.
        finalResults.set(title, {
            ...p, 
            variants: [], // Initialize variants array
            category: p.category || 'Uncategorized' // Store category
        });
      }
      
      // Add the requested variant to the list for this product group
      finalResults.get(title).variants.push(variantData);

    } else {
      notFound.push(sku);
    }
  });
  
  const found = Array.from(finalResults.values()); // Array of grouped product objects

  // Sort the found array first by category, then by product title for structured output
  found.sort((a, b) => {
      const categoryA = a.category || '';
      const categoryB = b.category || '';
      if (categoryA < categoryB) return -1;
      if (categoryA > categoryB) return 1;
      
      // Secondary sort by product title
      const titleA = a.producttitle || '';
      const titleB = b.producttitle || '';
      if (titleA < titleB) return -1;
      if (titleA > titleB) return 1;
      return 0;
  });

  createCardsFromJson(found); // Pass the full grouped structure

  const titleCount = found.length;
  let statusText = `${titleCount} unique product group(s) found based on title.`;

  if (notFound.length) {
    statusText += ` SKUs not found (${notFound.length}): ${notFound.join(", ")}`;
  } else if (titleCount < skus.length) {
    const groupedCount = skus.length - titleCount;
    statusText += ` (${groupedCount} duplicate variants were grouped.)`;
  }
  
  // --- PDF Library Feature Check ---
  let pdfFeatureStatus = "";
  if (typeof PDFLib !== 'undefined') {
    if (typeof PDFLib.PDFDocument === 'function') { 
        pdfFeatureStatus = " | PDFLib: Loaded - Ready";
    } else {
        pdfFeatureStatus = " | PDFLib: Loaded - Check your script tag";
    }
  } else {
    pdfFeatureStatus = " | PDFLib: Not Loaded - Check your script tag";
  }
  statusLine.textContent = statusText + pdfFeatureStatus;
  // --- End: PDF Library Feature Check ---
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
  groupedCardsByHtml = [];
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
    const scaleFactor = 1.05; // scale cards slightly

    const fontRegular = await pdfDoc.embedFont(StandardFonts.Helvetica);
    const fontBold = await pdfDoc.embedFont(StandardFonts.HelveticaBold);
    
    // Define title size/height for category headings
    const categoryTitleSize = 14; 
    const categoryTitleHeight = categoryTitleSize * 1.5;
    const categorySeparatorHeight = 5;
    const spaceAfterCategory = gap; // Space after the category line

    const cardsPerRow = Math.min(
      Math.max(parseInt(inputCardsPerRow.value) || 1, 1),
      8
    );
    
    if (groupedCardsByHtml.length === 0) {
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

    // --- Calculate the maximum number of text lines needed per card (excluding product title) ---
    let maxLinesPerCard = 0; 
    groupedCardsByHtml.forEach(card => {
        // Count all meta lines
        const totalLines = card.querySelectorAll(".meta").length; 
        // The product title line has class 'meta-title', so we subtract 1 if it exists.
        const hasTitle = card.querySelector(".meta-title") !== null;
        
        const lineCountForPdf = hasTitle ? totalLines - 1 : totalLines;
        
        if (lineCountForPdf > maxLinesPerCard) {
            maxLinesPerCard = lineCountForPdf;
        }
    });
    // Ensure at least 1 line worth of space for minimal card height
    maxLinesPerCard = Math.max(1, maxLinesPerCard); 

    const baseCardWidth =
      (pageWidth - margin * 2 - gap * (cardsPerRow - 1)) / cardsPerRow;
    const cardWidthPdf = baseCardWidth * scaleFactor;
    const imgMaxHeightPdf = cardWidthPdf * 0.6;

    const sampleScreenWidth = Math.max(
      100,
      groupedCardsByHtml[0].getBoundingClientRect().width
    );
    const screenFontSize = getDynamicFontSize(cardsPerRow);
    const pdfFontSize = Math.max(
      8,
      Math.round(screenFontSize * (cardWidthPdf / sampleScreenWidth))
    );
    
    // Card height calculation based on variant lines only
    const textLineHeight = pdfFontSize * 1.2;
    // Card height includes image, all (variant) text lines, and padding
    const cardContainerHeight = imgMaxHeightPdf + maxLinesPerCard * textLineHeight + padding * 2;
    const rowHeight = cardContainerHeight;

    const imageBuffers = await Promise.all(
      groupedCardsByHtml.map((card) =>
        getImageBuffer(
          card.dataset.image || fallbackImage,
          cardWidthPdf,
          imgMaxHeightPdf
        )
      )
    );

    let page = null; // Start with no page
    let yOffset = pageHeight - margin;
    let currentCategory = null; 

    for (let i = 0; i < groupedCardsByHtml.length; i += cardsPerRow) {
        const firstCardInRow = groupedCardsByHtml[i];
        const nextCategory = firstCardInRow.dataset.category || 'Uncategorized';
        
        // Vertical space required for the current row
        const requiredVerticalSpace = rowHeight + gap;

        // --- NEW PAGE FOR CATEGORY CHANGE OR OVERFLOW ---
        const isNewCategory = nextCategory !== currentCategory;
        
        // Check if we need a new page:
        // 1. If page hasn't been created yet (first item).
        // 2. If the category changed.
        // 3. If there's not enough space for the next row.
        if (page === null || isNewCategory || yOffset - requiredVerticalSpace < margin) {
            
            // If page exists AND (category changed OR ran out of space), add a new page.
            if (page !== null && (isNewCategory || yOffset - requiredVerticalSpace < margin)) {
                page = pdfDoc.addPage([pageWidth, pageHeight]);
                yOffset = pageHeight - margin;
            } else if (page === null) {
                // First run, initialize page
                page = pdfDoc.addPage([pageWidth, pageHeight]);
                yOffset = pageHeight - margin;
            }

            // Draw Category Title if it's a new category
            if (isNewCategory) {
                currentCategory = nextCategory;

                // Draw Category Title
                yOffset -= categoryTitleHeight;
                page.drawText(currentCategory, {
                    x: margin,
                    y: yOffset,
                    size: categoryTitleSize,
                    font: fontBold, 
                    color: rgb(0.1, 0.1, 0.3), 
                });
                
                // Add a small separator line
                yOffset -= categorySeparatorHeight; 
                page.drawLine({
                    start: { x: margin, y: yOffset },
                    end: { x: pageWidth - margin, y: yOffset },
                    thickness: 0.5,
                    color: rgb(0.5, 0.5, 0.5),
                });
                yOffset -= spaceAfterCategory;
            }
        }
        
        // Ensure a page exists before attempting to draw (should always be true here)
        if (!page) continue; 

        let rowCards = groupedCardsByHtml.slice(i, i + cardsPerRow);
        if (rowCards.length < cardsPerRow) {
            const missing = cardsPerRow - rowCards.length;
            for (let m = 0; m < missing; m++) rowCards.push(null); // blank placeholder
        }

        const rowWidth =
            rowCards.length * cardWidthPdf + (rowCards.length - 1) * gap;
        const containerX = (pageWidth - rowWidth) / 2;

        for (let j = 0; j < rowCards.length; j++) {
            const card = rowCards[j];
            const xOffset = containerX + j * (cardWidthPdf + gap);

            if (card) {
                const buffer = imageBuffers[groupedCardsByHtml.indexOf(card)];
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

                // --- Draw Text (Metadata) for all variants (excluding product title) ---
                // FILTER: Only select variants, exclude the product title (.meta-title)
                const paragraphs = Array.from(card.querySelectorAll(".meta")).filter(
                    p => !p.classList.contains('meta-title')
                );
                
                // Calculate the Y coordinate for the baseline of the first line of text.
                let currentTextY = yOffset - imgMaxHeightPdf - padding - textLineHeight; 

                paragraphs.forEach((p) => {
                    const spans = p.querySelectorAll(".meta__part");
                    let lineWidth = 0;
                    const textFont = fontRegular;
                    const metaPartFont = fontBold;

                    spans.forEach(
                        (span) =>
                        (lineWidth +=
                            metaPartFont.widthOfTextAtSize(span.textContent, pdfFontSize) + 4)
                    );
                    let remainingText = p.textContent.replace(
                        Array.from(spans)
                            .map((s) => s.textContent)
                            .join(""),
                        ""
                    );

                    if (remainingText.trim() !== "")
                        lineWidth += textFont.widthOfTextAtSize(
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
                            font: metaPartFont,
                            color: rgb(0, 0, 0),
                        });
                        currentX +=
                            metaPartFont.widthOfTextAtSize(span.textContent, pdfFontSize) + 4;
                    });

                    if (remainingText.trim() !== "") {
                        page.drawText(remainingText, {
                            x: currentX,
                            y: currentTextY,
                            size: pdfFontSize,
                            font: textFont, 
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
