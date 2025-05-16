#!/bin/bash
set -e

cd "$(dirname "$0")/libclang"

if [ ! -f "lib/libclang.so" ]; then
  echo "📦 Extracting libclang/libclang-lib.zip..."
  unzip -q libclang-lib.zip
else
  echo "✅ libclang already unpacked."
fi
