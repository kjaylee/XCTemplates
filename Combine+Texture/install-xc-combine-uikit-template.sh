#!/usr/bin/env sh

# Configuration
XCODE_FILE_TEMPLATE_DIR=$HOME'/Library/Developer/Xcode/Templates/File Templates/Combine+Texture'
XCODE_PROJECT_TEMPLATE_DIR=$HOME'/Library/Developer/Xcode/Templates/Project Templates/Combine+Texture'
SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# Copy Combine+Texture file templates into the local Combine+Texture template directory
xcodeTemplate () {
  echo "==> Copying up Combine+Texture Xcode file templates..."
  if [ -d "$XCODE_FILE_TEMPLATE_DIR" ]; then
    rm -R "$XCODE_FILE_TEMPLATE_DIR"
  fi
  mkdir -p "$XCODE_FILE_TEMPLATE_DIR"
  cp -R $SCRIPT_DIR/File\ Templates/*.xctemplate "$XCODE_FILE_TEMPLATE_DIR"
  echo "==> ... success!"
  echo "==> Copying up Combine+Texture Xcode project templates..."
  if [ -d "$XCODE_PROJECT_TEMPLATE_DIR" ]; then
    rm -R "$XCODE_PROJECT_TEMPLATE_DIR"
  fi
  mkdir -p "$XCODE_PROJECT_TEMPLATE_DIR"
  cp -R $SCRIPT_DIR/Project\ Templates/*.xctemplate "$XCODE_PROJECT_TEMPLATE_DIR"
  echo "==> ... success!"
}

xcodeTemplate

echo "==> Combine+Texture templates have been set up. In Xcode, select 'New Project' or 'New File...' to use Combine+Texture templates."
