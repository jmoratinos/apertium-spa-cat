#!/bin/bash

set -e
set -o pipefail

echo "Translating test sentences"
cat test-sentences-spa.txt | apertium -d .. spa-cat > test-sentences-spa-cat.txt
cat test-sentences-spa.txt | apertium -d .. spa-cat_valencia > test-sentences-spa-cat_valencia.txt

echo "Checking for differences"
git diff --exit-code
