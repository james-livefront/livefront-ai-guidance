# Versioning System

This guide uses semantic versioning (MAJOR.MINOR.PATCH) with automatic version bumping.

## How It Works

### Automatic Versioning (Recommended)

Simply add a tag to your commit message:

```bash
# Major version (breaking changes - complete restructure)
git commit -m "[major] Complete guide restructure"
git commit -m "[breaking] Remove deprecated sections"

# Minor version (new features - new sections, backwards compatible)
git commit -m "[minor] Add troubleshooting section"
git commit -m "[feature] Add new prompt templates"

# Patch version (fixes - typos, clarifications, small updates)
git commit -m "[patch] Fix typos in context examples"
git commit -m "[fix] Clarify AI tool selection"

# No tag = patch by default
git commit -m "Update README"  # Will bump patch version
```

### Manual Versioning

Use npm scripts:

```bash
npm run version:major  # 1.1.0 -> 2.0.0
npm run version:minor  # 1.1.0 -> 1.2.0
npm run version:patch  # 1.1.0 -> 1.1.1
```

Or run the script directly:

```bash
bash scripts/bump-version.sh "[minor] My changes"
```

## What Gets Updated

When you commit with a version tag:

1. `VERSION` file is updated
2. `README.md` version number is updated
3. Version history entry is added to README
4. Git tag is created (e.g., `v1.2.0`)
5. Changes are amended to your commit

## Version Guidelines for This Guide

### Major Version (Breaking)

- Complete restructure of guide
- Removing core sections
- Fundamental philosophy changes
- Incompatible with previous versions

### Minor Version (Feature)

- Adding new sections
- Adding new prompt templates
- Significant content additions
- New "Try This Now" exercises
- Backwards compatible additions

### Patch Version (Fix)

- Typo corrections
- Clarifications
- Small examples added
- Formatting improvements
- Link updates

## Setup

The git hooks are already configured. If you need to set them up again:

```bash
npm run setup:hooks
```

## Viewing Version History

```bash
# See all version tags
git tag -l "v*"

# See changelog in README
grep -A 1 "^### v" README.md
```

## Examples from This Guide

- `[major]` - When we restructured from 9 files to 6
- `[minor]` - When we added the measurement strategy
- `[patch]` - When we fixed typos or clarified examples
