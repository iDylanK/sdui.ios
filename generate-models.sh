#!/usr/bin/env bash

# LICENSE: Q42

set -e

SDUI_IOS_DIR=$(pwd)

generate() {
  echo "Generating models for schema url $1"

  # Generate iOS schemas
  cd $SDUI_IOS_DIR
  cd scripts/generate-models
  npm i 
  SCHEMA_URL=$1 npm run generate:models
  # cd $SDUI_IOS_DIR
  # ./formatting.sh
}

# Generate backend schemas
# TODO: ENV / generic
SDUI_BACKEND_DIR=~/Documents/sdui.backend

cd $SDUI_BACKEND_DIR
npm run build:schemas

generate "$SDUI_BACKEND_DIR/packages/sdui/generated/schema.json"
