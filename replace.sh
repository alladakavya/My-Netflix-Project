#!/bin/bash

# 1. Navigate to your repository (replace with your actual path)
cd /mnt/c/Users/smile/Documents/My-Netflix-Project

# 2. Find files containing "alladakavya"
FILES=$(grep -l -r "alladakavya" .)

# 3. If any files are found, replace the text
if [ -n "$FILES" ]; then
  echo "Files containing 'alladakavya': $FILES"
  for FILE in $FILES; do
    sed -i "s/alladakavya/alladakavya/g" "$FILE"
    echo "Replaced in: $FILE"
  done
else
  echo "No occurrences of 'alladakavya' found."
fi

# 4. (Optional) Commit the changes
git add .
git commit -m "Replaced alladakavya with alladakavya"

echo "Script completed."
