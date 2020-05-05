#!/bin/sh
find . -maxdepth 1 -type d -not \( -path "./.git*" -o -path "./etc*" -o -path "./src*" -o -path "./man*" -o -path "." \) -exec rm -rf {} \;
find . -type f -iname "*.vcxproj*" -exec rm -rf {} \;
rm -rf src/VisualStudio-Linux-Remote
rm -rf README.compile-and-pre-built-binaries
find . -type f -not \( -path "./.git*" -o -path "./hotbird64-mass-build*" \) -exec chmod 644 {} \;
find . -type f -not \( -path "./.git/*" -o -path "./VisualStudio/*" -o -iname "*.kmd" -o -iname "*vcxproj*" \) -exec sed -i 's/\r$//g' {} \;
