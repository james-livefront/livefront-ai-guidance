#!/bin/bash

# Automatic version bumping based on commit message tags
# Uses semantic versioning: MAJOR.MINOR.PATCH

set -e

# Colors for output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color

# Function to update version in README
update_readme_version() {
    local old_version=$1
    local new_version=$2
    
    # Update version number in header if it exists
    if grep -q "Version: ${old_version}" README.md; then
        sed -i.bak "s/Version: ${old_version}/Version: ${new_version}/" README.md
        # Clean up backup
        rm -f README.md.bak
    fi
}

# Function to determine bump type from commit message
get_bump_type() {
    local msg=$1
    if echo "$msg" | grep -qiE '\[major\]|\[breaking\]'; then
        echo "major"
    elif echo "$msg" | grep -qiE '\[minor\]|\[feature\]'; then
        echo "minor"
    elif echo "$msg" | grep -qiE '\[patch\]|\[fix\]'; then
        echo "patch"
    else
        echo "patch"  # default to patch
    fi
}

# Function to bump version
bump_version() {
    local current=$1
    local bump_type=$2
    
    IFS='.' read -r major minor patch <<< "$current"
    
    case "$bump_type" in
        major)
            echo "$((major + 1)).0.0"
            ;;
        minor)
            echo "${major}.$((minor + 1)).0"
            ;;
        patch)
            echo "${major}.${minor}.$((patch + 1))"
            ;;
    esac
}

# Main script
main() {
    # Check if VERSION file exists
    if [ ! -f "VERSION" ]; then
        echo -e "${RED}ERROR: VERSION file not found${NC}"
        exit 1
    fi
    
    # Get current version
    CURRENT_VERSION=$(cat VERSION)
    echo -e "${BLUE}Current version: ${CURRENT_VERSION}${NC}"
    
    # Get commit message (use provided message or last commit)
    if [ -n "$1" ]; then
        COMMIT_MSG="$1"
    else
        COMMIT_MSG=$(git log -1 --pretty=%B)
    fi
    
    # Determine bump type
    BUMP_TYPE=$(get_bump_type "$COMMIT_MSG")
    echo -e "${YELLOW}Bump type: ${BUMP_TYPE}${NC}"
    
    # Calculate new version
    NEW_VERSION=$(bump_version "$CURRENT_VERSION" "$BUMP_TYPE")
    echo -e "${GREEN}New version: ${NEW_VERSION}${NC}"
    
    # Update VERSION file
    echo "$NEW_VERSION" > VERSION
    
    # Update README.md
    update_readme_version "$CURRENT_VERSION" "$NEW_VERSION"
    
    # Stage changes
    git add VERSION README.md
    
    echo -e "${GREEN}✓ Version bumped from ${CURRENT_VERSION} to ${NEW_VERSION}${NC}"
    echo -e "${YELLOW}Note: Changes staged. Include in your commit or amend existing commit.${NC}"
}

# Run if not sourced
if [ "${BASH_SOURCE[0]}" == "${0}" ]; then
    main "$@"
fi
