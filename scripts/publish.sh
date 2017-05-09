# /usr/bin/bash
set -e

echo 'Patching full package.json'
npm version patch
mv package.json package.json.tmp

echo 'Swapping package.json'
mv package.npm.json package.json

echo 'Patching swapped package.json'
npm version patch

echo 'Publishing to NPM'
npm publish

echo 'Swapping back package.json'
mv package.json package.npm.json
mv package.json.tmp package.json
