#!/bin/bash

# Prompt the user to enter the file path
read -p "Enter the file path: " file_path

# Check if the file exists
if [ ! -f "$file_path" ]; then
  echo "Error: File not found: $file_path"
  exit 1
fi

# Perform the find and replace
sed -i 's/https/http:\/\/easyproxy.cosmos.home\/proxy\/manifest.m3u8?url=https/g' "$file_path"

# Check if the replacement was successful (optional)
if [ $? -eq 0 ]; then
  echo "Successfully replaced 'https' with 'http://easyproxy.cosmos.home/proxy/manifest.m3u8?url=https' in $file_path"
else
  echo "Error: Replacement failed in $file_path"
fi

exit 0

