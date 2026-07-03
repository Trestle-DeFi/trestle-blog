#!/usr/bin/env bash
set -euo pipefail
git submodule add https://github.com/adityatelange/hugo-PaperMod.git themes/PaperMod
echo "Done. Push to GitHub, then create a CF Pages project:"
echo "  Framework: Hugo"
echo "  Build command: hugo"
echo "  Build output: public"
echo "  Environment variables: (none)"
