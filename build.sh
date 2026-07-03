#!/usr/bin/env bash
set -euo pipefail
if [ ! -d themes/PaperMod ]; then
  git clone --depth=1 https://github.com/adityatelange/hugo-PaperMod.git themes/PaperMod
fi
exec hugo "$@"
