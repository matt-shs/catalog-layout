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

  cards.forEach((card) => {
    // FIX: Use the index within the category for correct margin calculation
    const indexInCategory = parseInt(card.dataset.indexInCategory) || 0;

    card.style.width = cardWidth + "px";
    
    // Ensure cards are always floating left
    card.style.float = 'left'; 
    
    // Calculate if it's the last card in the row using its category index
    const isLastInRow = (indexInCategory + 1) % cardsPerRow === 0;
    
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
  //const sortedCategories = Object.keys(categories).sort();
  const sortedCategories = Object.keys(categories).sort((a, b) => {
    // 1. Get the first item in each category group to find its order
    // Use 0 or a high number as a fallback if the property is missing
    const orderA = categories[a][0]?.categoryorder ?? 999999;
    const orderB = categories[b][0]?.categoryorder ?? 999999;

    // 2. Perform a numeric subtraction for ascending order
    return orderA - orderB;
  });

  sortedCategories.forEach((category) => {
    // 1. Create Category Header for HTML display
    const categoryHeader = document.createElement("h3");
    categoryHeader.className = "category-header";
    categoryHeader.textContent = category;
    
    // UPDATED CSS: Add a bottom border to underline the text, similar to the PDF line.
    categoryHeader.style.cssText = `
      clear: both; 
      margin-top: 30px; 
      margin-bottom: 20px; 
      font-weight: bold; 
      font-size: 1.5rem; 
      display: block; 
      width: 100%;
      padding-bottom: 5px; /* Space between text and underline */
      border-bottom: 1px solid #555; /* The underline effect */
    `;
    cardsContainer.appendChild(categoryHeader);
    
    // NEW: Create a container for the floating cards in this category
    const cardGroup = document.createElement("div");
    cardGroup.className = "card-group";
    // Using overflow: hidden is a common 'clearfix' technique to contain floats
    cardGroup.style.cssText = "overflow: hidden; width: 100%;"; 
    cardsContainer.appendChild(cardGroup);

    // Track index within this specific category for correct row margin calculation
    let indexInCategory = 0; 
    
    // 2. Iterate through products in this category (already sorted by title from lookupSKUs)
    categories[category].forEach((item) => {
      const card = document.createElement("div");
      card.className = "card";

      const img = document.createElement("img");
      img.src = fallbackImage;
      card.dataset.image = IMAGE_PATH + (item.picturename || "");
      
      // Attach product metadata to the card element for PDF export
      card.dataset.title = item.producttitle || '';
      card.dataset.category = item.category || 'Uncategorized';
      
      // FIX 1/3: Store the index within the category for correct row margin calculation on resize
      card.dataset.indexInCategory = indexInCategory; 
      indexInCategory++; 

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

      // FIX 2/3: Product Title is no longer displayed on the HTML page. 
      // We keep a hidden reference for PDF logic compatibility.
      const titleReference = document.createElement("p");
      titleReference.className = "meta meta-title hidden-ref";
      titleReference.textContent = item.producttitle || '';
      titleReference.style.display = 'none'; // Hide it visually
      metaContainer.appendChild(titleReference);

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
    const groupEnd = document.createElement("div");
    groupEnd.style.cssText = "clear: both; height: 40px; margin-bottom: 20px;"; 
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
  // let pdfFeatureStatus = "";
  // if (typeof PDFLib !== 'undefined') {
  //   if (typeof PDFLib.PDFDocument === 'function') { 
  //       pdfFeatureStatus = " | PDFLib: Loaded - Ready";
  //   } else {
  //       pdfFeatureStatus = " | PDFLib: Loaded - Check your script tag";
  //   }
  // } else {
  //   pdfFeatureStatus = " | PDFLib: Not Loaded - Check your script tag";
  // }
  //statusLine.textContent = statusText + pdfFeatureStatus;
  // --- End: PDF Library Feature Check ---

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
    
    // NOTE: spaceBeforeCategory is now unused since we force a page break

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
        // The product title reference line has class 'meta-title', so we subtract 1.
        const hasTitleReference = card.querySelector(".meta-title") !== null;
        
        const lineCountForPdf = hasTitleReference ? totalLines - 1 : totalLines;
        
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
    
    // --- Custom Max Cards Per Page Logic ---
    let maxCardsPerPage = Infinity;
    if (cardsPerRow === 1) {
        maxCardsPerPage = 1; // 1 card per page
    } else if (cardsPerRow === 2) {
        maxCardsPerPage = 4; // 4 cards per page (2 rows of 2)
    } 
    // --- END NEW LOGIC ---

    // Calculate category boundaries for controlled drawing
    const categoryBoundaries = []; 
    let startIndex = 0;
    
    if (groupedCardsByHtml.length > 0) {
        let currentCat = groupedCardsByHtml[0].dataset.category;
        for (let i = 0; i < groupedCardsByHtml.length; i++) {
            const nextCat = groupedCardsByHtml[i].dataset.category;
            
            if (nextCat !== currentCat) {
                // Category break found. Record the previous category's range.
                categoryBoundaries.push({
                    category: currentCat,
                    startIndex: startIndex,
                    endIndex: i // exclusive end index
                });
                
                // Start tracking the new category
                currentCat = nextCat;
                startIndex = i;
            }
        }
        // Always push the final category
        categoryBoundaries.push({
            category: currentCat,
            startIndex: startIndex,
            endIndex: groupedCardsByHtml.length
        });
    }

    let page = null; // Start with no page
    let yOffset = pageHeight - margin;
    let cardsDrawnOnPage = 0; // Counter for cards drawn on the current page
    let isFirstCategory = true; // New flag to ensure the first category is handled

    // Function to draw the category header block
    const drawCategoryHeader = (page, category, y) => {
        // Draw the category title
        y -= categoryTitleHeight;
        page.drawText(category, {
            x: margin,
            y: y,
            size: categoryTitleSize,
            font: fontBold, 
            color: rgb(0.1, 0.1, 0.3), 
        });
        
        // Add a small separator line
        y -= categorySeparatorHeight; 
        page.drawLine({
            start: { x: margin, y: y },
            end: { x: pageWidth - margin, y: y },
            thickness: 0.5,
            color: rgb(0.5, 0.5, 0.5),
        });
        y -= spaceAfterCategory; // Space before the cards begin
        return y;
    };
    
    // Iterate through category boundaries instead of fixed row steps
    for (const boundary of categoryBoundaries) {
        const currentCategory = boundary.category;
        let categoryCardIndex = boundary.startIndex;

        // --- NEW FIX: Force a new page for every category (except the very first one) ---
        if (isFirstCategory) {
            // This runs once for the very first category
            page = pdfDoc.addPage([pageWidth, pageHeight]);
            yOffset = pageHeight - margin;
            isFirstCategory = false; // Mark the first one as done
        } else {
            // This runs for all subsequent categories, ensuring a forced page break
            page = pdfDoc.addPage([pageWidth, pageHeight]);
            yOffset = pageHeight - margin;
            cardsDrawnOnPage = 0; // Reset card counter for the new page
        }

        // Draw Category Header (always at the top of a fresh page)
        yOffset = drawCategoryHeader(page, currentCategory, yOffset);

        // 2. Iterate through rows *within* this category
        while (categoryCardIndex < boundary.endIndex) {
            const cardsRemaining = boundary.endIndex - categoryCardIndex;
            const cardsInThisRow = Math.min(cardsPerRow, cardsRemaining);
            
            // Vertical space required for the current row
            const requiredVerticalSpace = rowHeight + gap;
            
            // Check if the current row will exceed the custom card limit for the page
            const isPageFullByCardCount = (maxCardsPerPage !== Infinity && cardsDrawnOnPage > 0 && cardsDrawnOnPage + cardsInThisRow > maxCardsPerPage);

            // Determine if we need to start a new page just for cards
            let needsNewPageForCards = isPageFullByCardCount || yOffset - requiredVerticalSpace < margin;
            
            if (needsNewPageForCards) {
                // Add new page, reset Y offset/counters
                page = pdfDoc.addPage([pageWidth, pageHeight]);
                yOffset = pageHeight - margin;
                cardsDrawnOnPage = 0; // Reset card counter for the new page

                // Redraw Category Header on the new page (for mid-category breaks)
                yOffset = drawCategoryHeader(page, currentCategory, yOffset);
            }

            // Slice the cards for the current row (only within the category)
            let rowCards = groupedCardsByHtml.slice(categoryCardIndex, categoryCardIndex + cardsInThisRow);
            
            // Pad with nulls to fill the row, ensuring the next category starts on a new line.
            const missing = cardsPerRow - rowCards.length;
            for (let m = 0; m < missing; m++) rowCards.push(null); 

            // Calculate horizontal positioning for the row (same as before)
            const rowWidth =
                rowCards.length * cardWidthPdf + (rowCards.length - 1) * gap;
            const containerX = (pageWidth - rowWidth) / 2;

            // Draw the row
            for (let j = 0; j < rowCards.length; j++) {
                const card = rowCards[j];
                const xOffset = containerX + j * (cardWidthPdf + gap);

                if (card) {
                    const buffer = imageBuffers[groupedCardsByHtml.indexOf(card)]; // Get buffer via index
                    
                    // --- Image Drawing ---
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
                                y: yOffset - imgMaxHeightPdf - padding,
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
            
            // Update pointers/counters after the row is drawn
            cardsDrawnOnPage += cardsInThisRow; // Only count actual cards
            yOffset -= requiredVerticalSpace; // Decrement Y offset by row height + gap
            categoryCardIndex += cardsInThisRow; // Move index pointer forward by actual drawn cards
        }
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
