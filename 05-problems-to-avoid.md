# Problems to Avoid: Anti-Patterns in AI-Assisted Development

*Learn from our mistakes. These are common problems teams hit when adopting AI tools.*

---

## The Context Rot Spiral

### What It Looks Like

You start with a clean prompt. AI gives you code. You ask for a change. Then another. Then another. By the 10th iteration, the AI is confused, you're frustrated, and the code is worse than when you started.

**Example Spiral:**

```text
You: "Create a React form component"
AI: [generates basic form]
You: "Add validation"
AI: [adds validation but breaks styling]
You: "Fix the styling"
AI: [fixes styling but removes validation]
You: "No, keep the validation AND fix styling"
AI: [creates entirely different component]
You: "GO BACK TO THE ORIGINAL"
AI: [generates something completely unrelated]
```

### Why It Happens

- Each message adds context but loses precision
- AI tries to incorporate ALL previous instructions
- Earlier context conflicts with later requirements
- You both lose track of the actual goal

### The Solution: Context Reset Protocol

**When you feel the spiral starting (usually around message 5-6):**

1. **Stop immediately**
2. **Save any good code** from the conversation
3. **Start fresh** with a complete specification:

```markdown
"Create a React form component with these EXACT requirements:
- Fields: [list all fields]
- Validation: [list all rules]
- Styling: [specific requirements]
- State management: [approach]
Here's the code we have so far: [paste good parts]
Please complete it with ALL requirements above."
```

### Prevention Tactics

- **One concern per conversation** - Don't mix feature development with debugging
- **Checkpoint working code** - Save working versions before asking for changes
- **Use specific language** - "Add X while preserving Y and Z"
- **Set iteration limits** - After 5 back-and-forths, reset

---

## The Over-Reliance Pattern

### What It Looks Like

You stop thinking and start copy-pasting. AI suggests something, you accept it without review. Code quality degrades. You can't explain your own codebase. During code review, you say "the AI wrote it."

**Danger Signs:**

- You can't explain what a function does without re-reading it
- You accept AI suggestions without understanding them
- You debug by asking AI instead of reading the code
- Your commits contain code you've never actually read
- You feel anxious when AI tools are unavailable

### Scenario

```javascript
// AI generated this "optimized" function
const processData = (items) => {
  return items.reduce((acc, item) => {
    const key = item.id ?? item.key ?? item.name;
    return {
      ...acc,
      [key]: acc[key]
        ? [...(Array.isArray(acc[key]) ? acc[key] : [acc[key]]), item]
        : item
    };
  }, {});
};

// Developer accepts it, ships it
// Later: "What does this do?"
// "Uh... the AI said it was optimized..."
// Reality: It has a subtle bug with duplicate handling
```

### Why It's Dangerous

- **Skills atrophy** - You lose the ability to code independently
- **Quality drops** - Subtle bugs slip through
- **Debugging nightmare** - Can't fix what you don't understand
- **Client trust** - "My developer doesn't understand their own code"

### The Solution: Active Engagement Protocol

1. **Read before accepting** - Every. Single. Line.
2. **Comment your understanding**:

```javascript
// Groups items by their ID (fallback to key/name)
// Handles duplicates by converting to array
const processData = (items) => {
  // ... code ...
};
```

1. **Test manually** - Run the code with edge cases
1. **Refactor for clarity** - If you don't understand it, simplify it
1. **Time-box AI assistance** - Work solo for 30 min before asking AI

### Skill Maintenance Routine

**Weekly:**

- Solve one problem without AI
- Review and refactor AI-generated code
- Explain your code to a colleague

**Daily:**

- Write the function signature yourself first
- Write tests before asking AI for implementation
- Debug for 10 minutes before asking AI

---

## Quality Degradation

### What It Looks Like

Your code works but it's getting worse. More bugs in production. Code reviews take longer. Technical debt accumulates. The codebase becomes a patchwork of AI-generated snippets that don't quite fit together.

**Warning Signs:**

```javascript
// Inconsistent patterns throughout codebase
// File 1: Promises
fetchData().then(data => process(data));

// File 2: Async/await
const data = await fetchData();
process(data);

// File 3: Callbacks for some reason
fetchData((err, data) => {
  if (!err) process(data);
});
```

**Metrics That Slip:**

- Test coverage drops below 80%
- Defect rate rises above 2%
- Code review comments increase
- Time to debug increases
- Documentation becomes sparse

### Why It Happens

- Different AI suggestions for similar problems
- No consistent coding standards applied
- Quick fixes without considering architecture
- AI doesn't know your team's conventions
- Copy-paste without adaptation

### The Solution: Quality Gates

**Before Accepting AI Code:**

```markdown
Quality Checklist:
- [ ] Matches our style guide
- [ ] Follows project patterns
- [ ] Has appropriate error handling
- [ ] Includes tests (or you'll write them)
- [ ] Documentation is complete
- [ ] No TODO comments
- [ ] No obvious performance issues
- [ ] Accessible (if UI component)
```

**Enforcement Strategies:**

1. **AI Code Review Rule**: All AI-generated code gets extra scrutiny
2. **Pattern Library**: Document your patterns, share with team
3. **Linting**: Configure aggressive linting rules
4. **Test Coverage**: No merge if coverage drops
5. **Pair Review**: AI-heavy PRs need two reviewers
6. **System Prompts**: That reference checking generated code against the Quality Checklist

---

## The Security Leak Scenario

### What It Looks Like

You're debugging production issues. You paste an error message into AI. The error contains customer data. Or an API endpoint. Or a stack trace with internal service names. Suddenly, your client's information is in an AI training dataset.

**Mistakes Were Made:**

```markdown
# DON'T DO THIS
"Help me debug this error:
Error: Failed to process payment for user sarah.jones@clientname.com
API Key: sk_live_4242424242424242
Endpoint: https://api.clientname.com/v2/payments"

# OR THIS
"Fix this SQL query:
SELECT * FROM production.users
WHERE company_id = 'uber-technologies-inc'
AND subscription_tier = 'enterprise'"
```

### The Breach Pathway

1. You paste sensitive data into AI
1. AI provider logs the interaction
1. Data might be used for training
1. Data might be reviewed by humans
1. Client finds out
1. Contract violation, possible lawsuit
1. Reputation destroyed :-(

### The Solution: Sanitization Protocol

**Before EVERY prompt:**

1. **Replace actual values**:

```markdown
# BEFORE
"Debug: Failed to charge $2,847.50 to card ending 4242 for Acme Corp"

# AFTER
"Debug: Failed to charge $AMOUNT to card ending XXXX for [CLIENT]"
```

1. **Use placeholder data**:

```javascript
// NEVER use production customer data
const testUser = {
  email: "sarah.jones@clientname.com", // NO!
  email: "test@example.com",          // YES!
};
```

1. **Create a sanitization checklist**:

```markdown
Before pasting into AI:
- [ ] No actual email addresses
- [ ] No actual names
- [ ] No API keys (not even "dead" ones)
- [ ] No production URLs
- [ ] No client company names
- [ ] No production data values
- [ ] No internal service names
```

1. **Use local tools** for sensitive debugging:

- Local LLMs for sensitive code
- Sanitized data sets
- Synthetic examples

---

## The AI Slop Problem

### What It Looks Like

Your documentation reads like AI wrote it. Your comments are verbose but say nothing. Your code has that "uncanny valley" feel - technically correct but somehow wrong.

**AI Slop Examples:**

```javascript
// AI Slop Comment (useless verbosity)
/**
 * This function takes an array of user objects as input and returns
 * a new array containing only those user objects where the active
 * property is set to true, effectively filtering out inactive users
 * from the original array.
 */
const getActiveUsers = (users) => users.filter(u => u.active);

// Better (human, concise)
// Returns only active users
const getActiveUsers = (users) => users.filter(u => u.active);
```

**Documentation Slop:**

```markdown
# AI Slop
The UserAuthentication module is responsible for handling all aspects
of user authentication within the application. It provides comprehensive
functionality for authenticating users, managing sessions, and ensuring
secure access to protected resources. This module implements industry
best practices and follows established security protocols to maintain
the integrity and confidentiality of user credentials.

# Better
# UserAuthentication
Handles login, logout, and session management using JWT tokens.
See: [Security Docs](01-foundation.md#security-first-never-compromise) for implementation details.
```

### Why It Matters

- Code reviews become painful
- Documentation is useless
- Team communication degrades
- Professionalism suffers
- Client notices the quality drop

### The Solution: Human Voice Protocol

1. **Edit everything** - Never ship raw AI output
1. **Be concise** - If AI writes 5 sentences, you need 1
1. **Add human insights**:

```javascript
// Not just what, but WHY
// Cache this - called 100+ times during checkout
const calculateTax = memoize((price, rate) => price * rate);
```

1. **Remove AI tells**:

- "It's important to note that..."
- "Comprehensive" anything
- "Ensure", "Utilize", "Implement"
- Unnecessary adjectives
- Redundant explanations

1. **Add your expertise**:

```javascript
// AI might generate:
const delay = (ms) => new Promise(resolve => setTimeout(resolve, ms));

// You add the wisdom:
const delay = (ms) => new Promise(resolve => setTimeout(resolve, ms));
// WARNING: Don't use this for precise timing - setTimeout has ~4ms minimum
```

---

## The Lost Learning Anti-Pattern

### What It Looks Like

Junior developers never struggle, never learn fundamentals. They generate solutions without understanding problems. They can't code without AI. They never develop debugging instincts.

**The Tragedy:**

- Year 1: "AI makes me so productive!"
- Year 2: "I can build anything with AI!"
- Year 3: "Why would I code without AI?"
- Year 4: Can't pass a whiteboard interview
- Year 5: Can't debug production issues
- Career: Plateaus at junior level

### Why It Happens

- Immediate solutions prevent learning from struggle
- Never build mental models
- Skip the fundamentals
- Don't develop problem-solving skills
- Mistake code generation for understanding

### The Solution: Deliberate Learning Protocol

**For Junior Developers:**

1. **Understand First, Generate Second**:

```markdown
Before using AI:
1. What is the problem?
2. What approaches could work?
3. What are the tradeoffs?
4. NOW ask AI for implementation
```

1. **Debug Before AI**:

- 15 minutes minimum self-debugging
- Write down your hypothesis
- Test it
- THEN ask AI if stuck

1. **Learn the Concepts**:

```javascript
// Don't just generate a sorting algorithm
// Understand WHY QuickSort is O(n log n)
// Understand WHEN to use it vs MergeSort
// THEN use AI to verify your implementation
```

**For Team Leads:**

- Pair juniors with seniors (not with AI)
- Code review AI-generated code extra carefully
- Require explanations, not just working code
- Set "AI-free" learning challenges
- Measure understanding, not just velocity

---

## The Escalation Path

When you hit these problems, here's what to do:

### Individual Developer

1. **Recognize** the pattern (use this guide)
2. **Stop** the problematic behavior
3. **Reset** your approach
4. **Document** what happened
5. **Share** with team

### Team Lead

1. **Monitor** for these patterns in code reviews
2. **Intervene** early with coaching
3. **Adjust** team practices
4. **Measure** quality metrics
5. **Report** trends to management

### Emergency Brake

**Pull the emergency brake when:**

- Security leak potential detected
- Quality metrics drop below standards
- Team member can't code without AI
- Client expresses concerns
- Production incidents increase

**Emergency Protocol:**

1. Pause AI usage for that developer/team
2. Review recent AI-assisted work
3. Remediation plan
4. Gradual reintroduction with controls
5. Lessons learned session

---

## Remember

AI is powerful. But power without discipline leads to these problems. Use AI deliberately, not desperately.

**The goal isn't to use AI for everything. It's to use AI for the right things, in the right way, while maintaining your craft.**

Next time you feel one of these patterns starting, stop. Reference this guide. Reset your approach. Your future self (and your team) will thank you.
