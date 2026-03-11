#!/bin/sh
set -e

npm run build

esbuild --bundle --format=iife --platform=browser scripts/demo-react-entry.js --outfile=demo.js

open-cli http://localhost:3000/demo.html
serve .
