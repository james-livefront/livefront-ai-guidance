#!/bin/bash

# Fix MD032: Add blank lines around lists
echo "Fixing MD032: Adding blank lines around lists..."

# Fix MD022: Add blank lines around headings
echo "Fixing MD022: Adding blank lines around headings..."

# Fix MD009: Remove trailing spaces
echo "Fixing MD009: Removing trailing spaces..."
find . -name "*.md" -not -path "./node_modules/*" -not -path "./archive/*" -exec sed -i '' 's/[[:space:]]*$//' {} \;

# Fix MD047: Ensure single trailing newline
echo "Fixing MD047: Ensuring single trailing newline..."
for file in $(find . -name "*.md" -not -path "./node_modules/*" -not -path "./archive/*"); do
    if [ -n "$(tail -c 1 "$file")" ]; then
        echo "" >> "$file"
    fi
done

echo "Basic fixes applied. Manual fixes needed for:"
echo "- MD032: Blank lines around lists"
echo "- MD022: Blank lines around headings"
echo "- MD026: Trailing punctuation in headings"
echo "- MD024: Duplicate headings"
