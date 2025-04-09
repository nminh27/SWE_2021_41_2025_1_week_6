#!/bin/bash
cd files
for file in *; do
    if [[ -f "$file" ]]; then
        checkletter=$(echo "$file" | tr '[:upper:]' '[:lower:]')
        mv "$file" "/$checkletter/"
    fi
done