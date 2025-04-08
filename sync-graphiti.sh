#!/bin/bash
# sync-graphiti.sh

echo "🔄 Syncing graphiti/ folder with getzep/graphiti..."

# Step 1: Remove existing folder
rm -rf graphiti/

# Step 2: Clone fresh copy of upstream
git clone --depth=1 https://github.com/getzep/graphiti.git tmp-graphiti

# Step 3: Move contents into project
mv tmp-graphiti graphiti
rm -rf graphiti/.git

# Step 4: Commit the updated code
git add graphiti/
git commit -m "Sync: updated graphiti from getzep/graphiti"
git push

echo "✅ graphiti folder synced."
