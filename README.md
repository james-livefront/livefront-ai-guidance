# Livefront AI Engineering Guide

## Start Here

This guide helps you integrate AI into your development workflow while maintaining Livefront's engineering standards. Based on 6+ months of real team experience.

**Read Time**: 45 minutes total (or jump to what you need)

---

## Guide Structure

### Core Learning Path (Read in Order)

1. **[Foundation](01-foundation.md)** *(10 min)* - Mindset shift and the 70% problem
2. **[Getting Started](02-getting-started.md)** *(15 min)* - Day 1 checklist and first week
3. **[SDLC Integration](03-sdlc-integration.md)** *(20 min)* - AI across every development phase

### Reference Materials

1. **[Prompt Library](04-prompt-library.md)** - 40+ tested prompts to copy and use
2. **[Problems to Avoid](05-problems-to-avoid.md)** - Critical anti-patterns and how to prevent them
3. **[Context Examples](06-context-examples.md)** - Good vs bad context engineering patterns
4. **[Case Studies](07-case-studies.md)** - Livefront projects with metrics

---

## Quick Actions

### Engineers: Your First Day

-> Jump to [Day 1 Checklist](02-getting-started.md#day-1-setup-and-first-wins-2-hours)

### Team Leads: Enable Your Team

-> See [Implementation Checklist](#implementation-checklist) below

### Need a Specific Prompt?

-> Browse [Prompt Library](04-prompt-library.md)

---

## Implementation Checklist

### Individual Developer (Week 1-4)

### Week 1: Foundation

- [ ] Install GitHub Copilot or Claude
- [ ] Complete Day 1 exercises
- [ ] Set up security boundaries
- [ ] Join #dev-ai Slack

### Week 2-3: Build Skills

- [ ] Use AI for 3+ tasks daily
- [ ] Create personal prompt library
- [ ] Track time saved
- [ ] Share one win with team

### Week 4: Full Integration

- [ ] AI-first for new tasks
- [ ] Pre-review PRs with AI
- [ ] Generate tests with AI
- [ ] Measure quality metrics

### Team Lead Actions

- [ ] Define team AI guidelines
- [ ] Set up shared prompt repository
- [ ] Schedule weekly knowledge sharing
- [ ] Track velocity improvements
- [ ] Report ROI to leadership

---

## Key Principles

### The 70% Problem

AI gets you 70% there quickly. The last 30% requires human expertise. That 30% is why clients hire Livefront.

### Security First

**Never** share in prompts: API keys, customer data, client names, proprietary algorithms

### Quality Standards Unchanged

- Test coverage: >=80%
- Code reviews: 100%
- Defect rate: <2%
- Accessibility: WCAG 2.1 AA

---

## Contributing

Found something that works? Share it:

1. Add to [Prompt Library](04-prompt-library.md)
2. Share in #dev-ai
3. Open a PR with improvements

### Local Checks

- Install deps: `npm install`
- Lint Markdown: `npm run lint:md`

### Git Hooks

- Enable hooks path: `git config core.hooksPath .githooks`
- Make hook executable: `chmod +x .githooks/pre-commit`
- On commit, staged Markdown files are linted and the commit fails on errors.

Or run the setup script:

- `npm run setup:hooks`

### CI

- Pull requests run a full Markdown lint via GitHub Actions.
- Workflow file: `.github/workflows/markdownlint.yml`

---

## Support

- **Slack**: #dev-ai
- **Maintainer**: James Fishwick
- **Version**: 1.0 (September 2025)

---

*Remember: AI is your pair programmer, not your replacement. Master the collaboration, maintain the craft.*
