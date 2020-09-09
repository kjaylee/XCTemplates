#!/usr/bin/env sh

# Configuration
XCODE_FILE_TEMPLATE_DIR=$HOME'/Library/Developer/Xcode/Templates/File Templates/RIBs+Texture'
XCODE_PROJECT_TEMPLATE_DIR=$HOME'/Library/Developer/Xcode/Templates/Project Templates/RIBs+Texture'
SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# Copy RIBs file templates into the local RIBs template directory
xcodeTemplate () {
  echo "==> Copying up RIBs+Texture Xcode file templates..."

  if [ -d "$XCODE_FILE_TEMPLATE_DIR" ]; then
    rm -R "$XCODE_FILE_TEMPLATE_DIR"
  fi
  if [ -d "$XCODE_PROJECT_TEMPLATE_DIR" ]; then
    rm -R "$XCODE_PROJECT_TEMPLATE_DIR"
  fi
  
  mkdir -p "$XCODE_FILE_TEMPLATE_DIR"
  mkdir -p "$XCODE_PROJECT_TEMPLATE_DIR"

  cp -R $SCRIPT_DIR/File\ Templates/*.xctemplate "$XCODE_FILE_TEMPLATE_DIR"
  cp -R $SCRIPT_DIR/Project\ Templates/*.xctemplate "$XCODE_PROJECT_TEMPLATE_DIR"
}

xcodeTemplate

echo "==> ... success!"
echo "==> RIBs+Texture have been set up. In Xcode, select 'New File...' to use RIBs+Texture templates."
