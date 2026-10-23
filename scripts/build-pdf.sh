#!/bin/sh
# Regenerate ONBOARDING.pdf from ONBOARDING.md (requires pandoc + Google Chrome).
set -e
cd "$(dirname "$0")/.."
CHROME="${CHROME:-/Applications/Google Chrome.app/Contents/MacOS/Google Chrome}"
TMP="$(mktemp -d)"
pandoc ONBOARDING.md -s --toc --toc-depth=1 --embed-resources \
  --css scripts/pdf.css --metadata pagetitle="POLARIS Onboarding" -o "$TMP/onboarding.html"
"$CHROME" --headless --disable-gpu --no-pdf-header-footer \
  --print-to-pdf="$PWD/ONBOARDING.pdf" "file://$TMP/onboarding.html" 2>/dev/null
rm -rf "$TMP"
echo "Wrote ONBOARDING.pdf"
