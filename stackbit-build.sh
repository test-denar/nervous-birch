#!/usr/bin/env bash

set -e
set -o pipefail
set -v

echo "stackbit-build.sh: start build"

# build site
npm run build

./inject-stackbit-widget.js out https://develop.widget.stackbit.com/init.js 60b5e41c9e5d9e4c8a6e0a6e

echo "stackbit-build.sh: finished build"
