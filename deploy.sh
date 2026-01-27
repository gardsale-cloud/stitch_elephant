#!/bin/bash

# Deployment script for GitHub Pages
# This script commits and pushes changes to the main branch
# which is configured for GitHub Pages

echo "🚀 Deploying to GitHub Pages..."

# Add all changes
git add .

# Check if there are changes to commit
if ! git diff --cached --quiet; then
    # Commit changes
    git commit -m "deploy: update site $(date '+%Y-%m-%d %H:%M:%S')"
    
    # Push to main branch
    git push origin main
    
    echo "✅ Deployment successful!"
    echo "🌐 Site will be available at: https://gardsale-cloud.github.io/stitch_elephant/"
else
    echo "ℹ️  No changes to deploy"
fi