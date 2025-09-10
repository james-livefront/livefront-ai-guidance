# Part I: Foundation - What Changes, What Doesn't

## The Reality of AI in Software Development

AI tools are here. They're powerful. They're also imperfect.

At Livefront, we've spent months integrating AI into our workflow, observing results, and learning what works. This guide distills those learnings into practical guidance that maintains our engineering standards while leveraging new capabilities.

## What Changes

### You Become an Orchestrator

Instead of writing every line, you're now directing, reviewing, and refining. Think of yourself as a senior engineer with a very capable but inexperienced junior developer(s) who:

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

_[From hypothetical healthcare client project]_

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

Stop thinking: "How do I code this?"
Start thinking: "How do I get this coded correctly?"

This means:

1. **Specification becomes critical** - The better you describe what you need, the better the output
2. **Review skills matter more than syntax** - Can you spot subtle bugs in familiar-looking code?
3. **Architecture decisions are more valuable** - AI won't make these for you
4. **Domain knowledge is your differentiator** - Understanding the client's world

## The Livefront Way with AI

We're not trying to replace engineers with AI. We're using AI to make our engineers more effective at what matters:

- Understanding client needs
- Designing elegant solutions
- Ensuring quality and accessibility
- Mentoring and growing teams
- Solving interesting problems

The code is just the output. The thinking is still the job.

## Security First: Never Compromise

### Use of Confidential Information with AI Tools

Livefront's handbook permits the use of confidential information—including client names, source code, and other sensitive materials with [pre-approved AI tools](https://www.notion.so/livefront/10-AI-Tools-2249880e7bad8046a82ae60d337d1434?source=copy_link) (such as OpenAI Codex, GitHub Copilot, or other tools explicitly authorized by Livefront). This exception is intended to enable productivity and innovation while maintaining strict security standards.

**Key points:**

- Never share confidential data with unapproved tools, platforms, or services.
- If unsure about what is permitted, consult your manager.
- One leaked API key or customer record can destroy trust instantly.

### Zero TODOs Policy with AI

AI may suggest adding TODOs - don't accept them. If AI identifies needed work:

1. Create a ticket immediately
2. Link it in the code comment
3. Never let AI-generated technical debt

---

## Ready to Start?

If this resonates, move to Part II: Getting Started. We'll get you set up with tools and scoring your first wins within a day.

If you're skeptical, that's healthy. Try it for a week with our guidance. Measure the results. Keep what works, discard what doesn't.
