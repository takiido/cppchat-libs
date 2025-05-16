#!/bin/bash
set -e

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
ZIP_PATH="$ROOT_DIR/libclang/lib.zip"
UNZIP_TARGET_DIR="$ROOT_DIR/libclang/lib"
SO_FILE="$UNZIP_TARGET_DIR/libclang.so"

if [ -f "$SO_FILE" ]; then
  echo "✅ libclang already unpacked at $SO_FILE"
  exit 0
fi

if [ ! -f "$ZIP_PATH" ]; then
  echo "❌ lib.zip not found at $ZIP_PATH"
  exit 1
fi

echo "📦 Extracting libclang/lib.zip..."
unzip -q "$ZIP_PATH" -d "$ROOT_DIR/libclang"
echo "✅ Extraction complete: $SO_FILE"
