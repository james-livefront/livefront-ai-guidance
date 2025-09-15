# Livefront AI Engineering Guide

## Start Here

This guide helps you integrate AI into your development workflow while maintaining Livefront's engineering standards. Based on 6+ months of real team experience.

**Tool Agnostic**: These principles work with any AI tool - Claude, ChatGPT, Copilot, Gemini, or local models. Pick what works for your team and security requirements.

**Read Time**: Full guide or jump to what you need

---

## Guide Structure

### Core Learning Path (Read in Order)

1. **[Foundation](01-foundation.md)** - Mindset shift and the 70% problem
2. **[Getting Started](02-getting-started.md)** - Day 1 checklist and first week
3. **[SDLC Integration](03-sdlc-integration.md)** - AI across every development phase

### Reference Materials

1. **[Prompt Library](04-prompt-library.md)** - 40+ tested prompts to copy and use
2. **[Problems to Avoid](05-problems-to-avoid.md)** - Complete anti-pattern guide with failure modes
3. **[Context Examples](06-context-examples.md)** - Good vs bad context engineering patterns

---

## Quick Actions

### Engineers: Your First Day

-> Jump to [Day 1 Checklist](02-getting-started.md#day-1-setup-and-first-wins)

### Team Leads: Enable Your Team

-> See [Setup Checklist](#setup-checklist) below

### Need a Specific Prompt?

-> Browse [Prompt Library](04-prompt-library.md)

---

## Setup Checklist

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

### Managing Junior Developers

- Enforce the 15-minute rule before AI assistance
- Review their AI-generated code extra carefully
- Pair them with seniors, not just with AI
- Test their ability to code without AI monthly
- If they can't explain it, they can't ship it

---

## Key Principles

## Our Philosophy on AI in Development

Livefront believes that exceptional software comes from developers who understand business needs AND enjoy their craft. AI is a tool that should enhance both.

We value:

- **Business understanding** supported by technical excellence
- **Meaningful coding** over repetitive typing
- **Developer joy** in solving real problems
- **Time spent on** creative solutions, not boilerplate
- **Deep engagement** with both code and client needs

AI should free you to do more of what you love about development, not less.

### The 70% Problem

AI gets you 70% there quickly. The last 30% requires human expertise. That 30% is why clients hire Livefront.

### Security First

**Never** share in prompts: API keys, customer data, client names, proprietary algorithms

### Quality Standards Unchanged

- Test coverage: >=80%
- Code reviews: 100%
- Defect rate: <2%
- Accessibility: WCAG 2.1 AA

### How Do You Know It's Working?

Simple: Fewer bugs in production, faster cycle time, team still enjoys coding.
If any of these decline, reassess your AI usage.

### For Junior Developers

AI accelerates learning but can prevent understanding. Use the 15-minute rule: try solving manually first. If you can't explain what AI generated, don't ship it.

---

## Contributing

Found something that works? Share it:

1. Share in #dev-ai
2. Open a PR with improvements

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
- **Version**: 1.1.0 (January 2025)

## Versioning

This guide uses semantic versioning with automatic version bumping:

**In commit messages, use:**

- `[major]` or `[breaking]` - Breaking changes (2.0.0)
- `[minor]` or `[feature]` - New sections/content (1.2.0)
- `[patch]` or `[fix]` - Fixes and clarifications (1.1.1)
- No tag = patch bump by default

**Example:** `git commit -m "[minor] Add new debugging section"`

---

*Remember: AI is your pair programmer, not your replacement. Master the collaboration, maintain the craft.*
