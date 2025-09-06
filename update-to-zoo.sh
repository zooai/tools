#!/bin/bash

# Update all Shinkai references to Zoo in the tools repository
echo "Updating Shinkai references to Zoo..."

# Update in all metadata.json files
find . -name "metadata.json" -type f -exec sed -i '' 's/"Shinkai"/"Zoo AI"/g' {} \;
find . -name "metadata.json" -type f -exec sed -i '' 's/"@@official\.shinkai"/"@@official.zoo"/g' {} \;
find . -name "metadata.json" -type f -exec sed -i '' 's/shinkai-tools/zoo-tools/g' {} \;
find . -name "metadata.json" -type f -exec sed -i '' 's/__official_shinkai/__official_zoo/g' {} \;

# Update in all .tool-dump.test.json files
find . -name "*.tool-dump.test.json" -type f -exec sed -i '' 's/"Shinkai"/"Zoo AI"/g' {} \;
find . -name "*.tool-dump.test.json" -type f -exec sed -i '' 's/"@@official\.shinkai"/"@@official.zoo"/g' {} \;
find . -name "*.tool-dump.test.json" -type f -exec sed -i '' 's/__official_shinkai/__official_zoo/g' {} \;
find . -name "*.tool-dump.test.json" -type f -exec sed -i '' 's/shinkai_/zoo_/g' {} \;

# Update in TypeScript and JavaScript files
find . -name "*.ts" -o -name "*.js" -type f -exec sed -i '' 's/shinkai/zoo/g' {} \;
find . -name "*.ts" -o -name "*.js" -type f -exec sed -i '' 's/Shinkai/Zoo/g' {} \;

# Update in Python files
find . -name "*.py" -type f -exec sed -i '' 's/shinkai/zoo/g' {} \;
find . -name "*.py" -type f -exec sed -i '' 's/Shinkai/Zoo/g' {} \;

# Update in README files
find . -name "README.md" -type f -exec sed -i '' 's/Shinkai/Zoo AI/g' {} \;
find . -name "README.md" -type f -exec sed -i '' 's/shinkai/zoo/g' {} \;

echo "Update complete!"