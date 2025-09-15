# Part I: Foundation - What Changes, What Doesn't

## The Reality of AI in Software Development

AI tools are here. They're powerful. They're also imperfect.

At Livefront, we've spent months integrating AI into our workflow, observing results, and learning what works. This guide distills those learnings into practical guidance that maintains our engineering standards while leveraging new capabilities.

## Choose Your Adoption Level

This guide presents various AI integration strategies. Teams and individuals should choose what works for them:

### Minimal Integration

- Use AI for documentation and test generation only
- Manual coding remains primary approach
- AI as occasional reference tool

### Balanced Integration

- AI assists with boilerplate and repetitive tasks
- Manual coding for business logic and critical paths
- Regular AI-assisted code reviews

### Comprehensive Integration

- AI-first approach for initial drafts
- Heavy focus on prompt engineering
- Manual refinement and quality control

**There is no "right" level** - choose based on your team's comfort, project requirements, and client expectations.

## What Changes

### You Become an Orchestrator

You remain a hands-on developer who now has access to powerful assistive tools. Think of AI like a sophisticated IDE - it accelerates certain tasks but doesn't replace your coding expertise. You'll still write plenty of code, especially the complex, creative, and critical parts. Think of yourself as a senior engineer with a very capable but inexperienced junior developer(s) who:

- Works 24/7 without getting tired
- Has seen millions of code patterns
- Can't understand your client's business
- Makes confident mistakes

### Speed on the Boring Stuff

Those tasks you can do in your sleep? They're now dramatically faster:

- Boilerplate component setup
- Unit test generation
- API client creation
- Documentation writing
- Data transformation functions

**What our teams report**: Significant acceleration on repetitive tasks, with the biggest gains in boilerplate generation and test creation. The exact speedup depends on your codebase, patterns, and how well you prompt.

### The Nature of Bugs Changes

- Fewer typos and syntax errors
- Fewer "forgot to handle null" bugs
- More logic errors that look right but aren't
- More subtle edge cases from overgeneralization

## What Doesn't Change

### Engineering Craft Still Matters

AI can't:

- Understand why the design specifies 16px instead of 15px
- Know that your healthcare client's users are primarily 55+
- Decide whether to optimize for performance or maintainability
- Recognize when a technically correct solution is a poor user experience

### Our Standards Remain Non-Negotiable

- **Accessibility**: Still requires human testing with actual screen readers
- **Performance**: Still needs profiling and real-device testing
- **Security**: Still demands careful review and scanning
- **User Experience**: Still requires empathy and understanding

### The Client Relationship

Clients hire Livefront for judgment, not just code production. AI doesn't change that:

- We still need to understand their business
- We still need to push back on bad ideas
- We still need to deliver on time and budget
- We still own every line we ship

## The 70% Problem

The emerging rule of thumb: AI consistently gets you 70% of the way there. This is both powerful and dangerous.

**Powerful because**:

- That 70% often represents the tedious work
- It happens much faster than manual coding
- It frees you to focus on the interesting 30%

**Dangerous because**:

- The last 30% determines quality
- It's tempting to ship at 70%
- The 30% requires the expertise clients pay for

### Example: The Date Picker Component

*[From hypothetical healthcare client project]*

**What AI can Deliver (70%)**:

- Component structure
- Basic date selection logic
- Standard accessibility attributes
- TypeScript interfaces
- Common edge cases

**What Requires Human Expertise (30%)**:

- Recognizing older users need larger touch targets
- Knowing the specific holidays that matter to healthcare
- Understanding the unspoken requirement about shift patterns
- Catching that the design's error state didn't match their system
- Deciding how to handle the 90-day maximum edge case

That 30% is why clients hire Livefront.

### ⌨️ Try This Now: Experience the 70/30 Split

**Goal**: Feel the boundary between AI capability and human expertise
**Time**: 5 minutes
**Do this**:

1. Pick any component from your current project
2. Ask AI to recreate it from just the component name
3. Compare what AI generated vs your actual implementation
4. Note what AI got right (structure) vs wrong (business logic)
**Success looks like**: AI nailed the boilerplate but missed YOUR specific requirements

## Where AI Consistently Fails

Let's be explicit about AI's blind spots:

### 1. Implicit Requirements

**AI sees**: "Build a form"
**AI misses**: This form is for seniors with limited tech experience

### 2. Business Context

**AI sees**: "Validate date input"
**AI misses**: Dates are for medical procedures that require specific prep time

### 3. Performance Budgets

**AI sees**: "Solve the problem"
**AI misses**: This runs on 5-year-old Android devices in rural areas

### 4. Security Implications

**AI sees**: "Store user preference"
**AI misses**: This preference could be used to identify the user's medical condition

### 5. Cultural and Regulatory Context

**AI sees**: "Payment form"
**AI misses**: This is for a German client where SEPA is expected, not credit cards

## The New Mental Model

Expand your thinking from: "How do I code this?"
To include: "What's the most meaningful way to solve this problem?"

This means:

- Using AI for boilerplate so you can focus on creative solutions
- Spending less time on syntax, more time understanding the business problem
- Writing the critical code yourself while delegating the repetitive parts
- Deeper engagement with why we're building, not just what

## Security First: Never Compromise

### Never Share in Prompts

- **API keys/secrets** - Not even "example" keys from production
- **Customer data** - No actual names, emails, or PII
- **Client names** - Keep projects anonymous
- **Proprietary algorithms** - Core business logic stays private
- **Production URLs** - Use localhost or example.com

### Always Sanitize

- Replace actual values with placeholders
- Use generic examples (<user123@example.com>)
- Strip identifying information
- Create fictional scenarios that mirror practical problems

### Zero TODOs Policy with AI

AI may suggest adding TODOs - don't accept them. If AI identifies needed work:

1. Create a ticket immediately
2. Link it in the code comment
3. Never let AI-generated technical debt hide

One leaked API key or customer record can destroy trust instantly.

---

## Ready to Start?

If this resonates, move to Part II: Getting Started. We'll get you set up with tools and scoring your first wins within a day.

If you're skeptical, that's healthy. Try it for a week with our guidance. Measure the results. Keep what works, discard what doesn't.
