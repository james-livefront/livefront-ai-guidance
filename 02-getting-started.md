# Part II: Getting Started - Your First Week

## Day 1: Setup and First Wins (2 hours)

### Morning: Tool Setup (30 minutes)

#### The Essentials Checklist

- [ ] Install GitHub Copilot (or alternative) in your IDE
  - Verify it's working: Type `// Function to` and see if suggestions appear
- [ ] Install AI chat tool (pick one):
  - [ ] Claude.ai (best for complex reasoning)
  - [ ] ChatGPT (best for general coding)
  - [ ] Gemini (best if using Google Cloud)
- [ ] Bookmark this guide and the prompt library
- [ ] Join #dev-ai Slack channel

#### Security Setup (10 minutes)

- [ ] Read the one-page security rules (Appendix A)
- [ ] Install or configure password manager for API keys
- [ ] Set up separate browser profile for AI tools (keeps client work isolated)

### Late Morning: Your First AI Win (45 minutes)

#### Exercise: The Unit Test Challenge

**Goal**: Experience the immediate value by generating tests for existing code.

1. **Find a function you wrote recently** (50-100 lines)
2. **Copy it into your AI chat** (or otherwise get it into context)
3. **Use this prompt**:

   ```text
   Generate comprehensive unit tests for this TypeScript function using Jest:
   [paste your function]

   Include:
   - Happy path tests
   - Edge cases
   - Error conditions
   - Mock any external dependencies
   - Follow this test pattern: [paste an example test from your codebase]
   ```

4. **Review the output**:
   - Are the test cases logical?
   - Did it catch edge cases you missed?
   - Is it following your patterns?

5. **Run the tests**:
   - Copy into your test file
   - Fix any syntax issues
   - Run and see coverage

**Success Metric**: If you got even 50% useful tests in <10 minutes, you've just experienced the value.

### Afternoon: Your First Real Task (45 minutes)

#### Exercise: The Component Speed Run

**Goal**: Build a real component you need, but faster.

Pick something from your current sprint that's:

- Self-contained (one component/function)
- Well-defined (clear requirements)
- Low-risk (not critical path)

1. **Write the specification** (10 min):

   ```text
   Create a [component name] that:
   - Purpose: [what it does]
   - Props: [list with types]
   - Behavior: [user interactions]
   - Design: [reference or description]
   - Constraints: [performance, accessibility, etc.]
   ```

2. **Generate with AI** (5 min):
   - Add your tech stack context
   - Include a similar component as pattern reference
   - Generate the code

3. **Review and Refine** (20 min):
   - Does it match requirements?
   - Check accessibility
   - Verify prop types
   - Test the edge cases

4. **Integration** (10 min):
   - Add to your project
   - Connect to live data
   - Verify it works

**Success Metric**: If you completed in <1 hour what normally takes 2-3 hours, you're on track.

### End of Day: Reflection (15 minutes)

Document your experience:

- What worked well?
- What failed or surprised you?
- What would you try differently?
- Share one learning in #dev-ai

---

## Day 2-3: Building Confidence

### The Three-Task Rule

Each day, use AI for at least three tasks:

1. One you're confident it can handle (momentum builder)
2. One you're curious about (learning opportunity)
3. One you're skeptical about (boundary testing)

### Suggested Task Progression

#### Day 2 Tasks:

- **Morning**: Generate API client from OpenAPI spec
- **Midday**: Convert a class component to hooks
- **Afternoon**: Debug a failing test using AI

#### Day 3 Tasks:

- **Morning**: Document an undocumented module
- **Midday**: Refactor a complex function for readability
- **Afternoon**: Create form validation logic

### Daily Habits to Build

#### Start Each Task with the Question:

"Could AI do the boring part of this?"

#### The Two-Minute Rule:

If you think AI might help, spend 2 minutes trying.

- If it works: Continue
- If it doesn't: Move on, note why

#### Document What Works:

Keep a prompt journal:

```markdown
## Date: [Today]
## Task: [What you were doing]
## Prompt Used:
[exact prompt]
## Result: [Success/Partial/Failure]
## Notes: [What you learned]
```

---

## Day 4-5: Expanding Your Toolkit

### Moving Beyond Code Generation

#### Documentation Day (Day 4)

**Morning Exercise**: README Generation

1. Pick a project with poor documentation
2. Feed AI the main files and ask for README
3. Edit for accuracy and tone
4. Time saved: ~2 hours -> 30 minutes

**Afternoon Exercise**: API Documentation

1. Point AI at your endpoints
2. Generate OpenAPI/Swagger docs
3. Review for accuracy
4. Time saved: ~3 hours -> 45 minutes

#### Testing Day (Day 5)

**Morning Exercise**: Integration Test Creation

1. Describe user flow to AI
2. Generate Cypress/Playwright/Whatever tests
3. Adjust selectors and assertions
4. Run against your app

**Afternoon Exercise**: Test Data Generation

```text
Generate 20 realistic user profiles for testing with:
- Healthcare industry context
- Varied demographics
- Edge cases (long names, special characters)
- Format: JSON
```

### End of Week Checkpoint

#### You Should Now Be Able To:

- [ ] Generate boilerplate code in seconds
- [ ] Create comprehensive tests quickly
- [ ] Document code effectively
- [ ] Debug with AI assistance
- [ ] Recognize when AI will/won't help

#### Metrics to Track:

- Tasks attempted with AI: ___
- Success rate: ___%
- Average time saved: ___ hours
- Quality issues introduced: ___
- Most useful discovery: ___________

---

## Week 2-4: Proficiency Building

### Week 2: Advanced Patterns

#### Focus Areas:

- Multi-file refactoring
- Architecture discussions
- Performance optimization
- Complex debugging

#### Daily Challenge

Each day, attempt one task you think is "too complex for AI"

### Week 3: Team Integration

#### Goals

- Share three useful prompts with team
- Pair program using AI as "third developer"
- Review PR where AI generated >50% of code
- Document team patterns that work

### Week 4: Process Optimization

#### Establish Your Workflow

1. Which tasks always use AI?
2. Which tasks never use AI?
3. Where's your 70/30 split?
4. What's your verification process?

---

## Common Week 1 Problems and Solutions

### Problem: "AI keeps generating code that doesn't match our patterns"

**Solution**: Always include example code from your codebase as context. AI is great at pattern matching.

### Problem: "The output is too generic"

**Solution**: Be boringly specific. Include tech versions, library preferences, naming conventions.

### Problem: "I spent more time fixing AI code than writing from scratch"

**Solution**: Wrong task selection. Start with well-defined, isolated tasks. Complexity comes later.

### Problem: "AI doesn't understand our business domain"

**Solution**: It won't. Ever. That's your job. Use AI for the technical implementation, you provide the domain context.

### Problem: "I'm not sure if the AI code is secure"

**Solution**: Good instinct. Never trust AI with security-critical code without thorough review. When in doubt, ask your Engineering Manager.

---

## Your Personal AI Playbook

By end of Week 1, you should have identified:

### Your Green Zone (Always Use AI):

- [ ] Task type: ________________
- [ ] Task type: ________________
- [ ] Task type: ________________

### Your Red Zone (Never Use AI):

- [ ] Task type: ________________
- [ ] Task type: ________________
- [ ] Task type: ________________

### Your Yellow Zone (Case-by-Case):

- [ ] Task type: ________________
- [ ] Task type: ________________
- [ ] Task type: ________________

---

## Ready for More?

If you've completed Week 1 and want to accelerate:

- Jump to Part III: The AI-Enhanced SDLC
- Try the advanced exercises in Appendix B
- Share your experience to help others

Remember: This isn't a race. Better to build solid habits slowly than rush and develop bad patterns.

---

## Appendix: Advanced Exercises

### Intermediate: Feature Implementation (2 hours)

#### Build a complete feature with AI assistance

1. Start with requirements
2. Ask AI: "What questions should I ask before implementing?"
3. Design component structure (yourself)
4. Generate implementation with AI
5. Create comprehensive tests with AI
6. Refactor for accessibility

**Success metrics**: Working component, full test coverage, accessibility compliant

### Advanced: Architecture Planning (3 hours)

#### Design a new microservice with AI collaboration

1. Define requirements clearly
2. Ask AI: "What architecture patterns fit these requirements?"
3. Evaluate AI suggestions critically
4. Design data models with AI assistance
5. Generate API contracts
6. Create implementation plan

**Key insight**: AI suggests options, you make decisions

### Expert: Cross-Platform Implementation (4 hours)

#### Same feature for Web, iOS, and Android

1. Implement for one platform first
2. Use AI to "translate" to other platforms
3. Verify platform-specific conventions
4. Ensure consistent business logic
5. Document platform differences

**Challenge**: Maintain quality across all three platforms
