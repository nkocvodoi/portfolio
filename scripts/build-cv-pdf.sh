#!/bin/sh
# Builds the downloadable CV PDFs (one per language) from cv.html with headless Chrome.
# Run again after any change to cv.html:  sh scripts/build-cv-pdf.sh
set -e

ROOT=$(cd "$(dirname "$0")/.." && pwd)
CHROME=${CHROME:-"/Applications/Google Chrome.app/Contents/MacOS/Google Chrome"}
OUT="$ROOT/assets/cv"
mkdir -p "$OUT"

for lang in vi en ja; do
  file="$OUT/Nguyen-Duy-Kien-CV-$(echo "$lang" | tr a-z A-Z).pdf"
  "$CHROME" --headless=new --disable-gpu --no-pdf-header-footer \
    --run-all-compositor-stages-before-draw --virtual-time-budget=10000 \
    --print-to-pdf="$file" "file://$ROOT/cv.html?lang=$lang" 2>/dev/null
  echo "$file"
done
