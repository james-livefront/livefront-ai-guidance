# Livefront AI Prompt Library

## Prompts for Common Tasks

Please copy, customize, and share your own successful prompts!

---

## Prompt Scope & Ownership

Understanding the right scope for your prompts helps ensure they're useful and findable:

### Company-wide Prompts

These are useful across all teams and projects at Livefront. They typically cover:

- Universal code quality practices (reviews, refactoring, testing)
- Common technical patterns (APIs, databases, security)
- Livefront-specific standards (engineering tenents, accessibility, etc.)

### Platform-level Prompts

Tailored to specific platforms' workflows, tech stacks, or domains:

- **Mobile Team**: React Native components, platform-specific debugging
- **Backend Team**: Database optimization, API design patterns
- **Frontend Team**: Framework-specific patterns, performance optimization
- **DevOps Team**: Infrastructure, deployment, monitoring

### Individual Prompts

Personal productivity boosters or highly specialized prompts:

- Domain expertise (specific industries, regulations)
- Personal workflow optimizations
- Experimental or niche techniques

### Contributing Guidelines by Scope

**When adding a prompt:**

1. **Identify the scope**: Who would benefit from this prompt?
2. **Place appropriately**: Company prompts go first, then platform, then individual
3. **Include context**: Especially for platform/individual prompts

**Evolution**: If your individual or platform prompt proves broadly useful, move it up in scope!

> **Note on Organization**: As our prompt library grows, this organizational structure may need to evolve. We might add subcategories within platforms, create cross-platform sections, or develop new groupings based on common use patterns. The goal is to keep prompts discoverable and useful as our collection scales.

---

## Company-wide Prompts

> These prompts are useful across all teams and projects at Livefront.

## Architecture & Design

### System Architecture Design

```text
Design a system architecture for: [describe system]

Technical requirements:
- Expected load: [users/requests per second]
- Data volume: [GB/TB]
- Response time: [ms]
- Availability: [99.9%]

Business requirements:
- Budget constraints: [rough numbers]
- Timeline: [weeks/months]
- Team size: [number of developers]

Provide 3 options:
1. MVP/Quick approach
2. Ideal/Scalable approach
3. Pragmatic middle ground

For each include:
- Architecture diagram (as ASCII or description)
- Technology stack
- Rough cost estimate
- Key trade-offs
- Migration path from one to another
```

### API Design

```text
Design a RESTful API for [feature/service]:

Functional requirements:
[list what it needs to do]

Non-functional requirements:
- Expected QPS: [number]
- Response time SLA: [ms]
- Authentication method: [OAuth/JWT/etc]

Include:
- Resource endpoints with HTTP methods
- Request/response schemas (with examples)
- Error response format
- Rate limiting strategy
- Versioning approach
- OpenAPI specification

Follow REST best practices and use consistent naming.
```

---

## Implementation

### React Native Component Generation

```text
Create a React Native component:

Component: [name]
Purpose: [what it does]
Props: [list with TypeScript types]

Requirements:
- TypeScript with strict mode
- Styled-components for styling
- Full accessibility support
- Handle loading/error/empty states
- Memoization where appropriate

Follow this pattern from our codebase:
[paste your component template]

Include:
- Component file
- Types file
- Test file
- Storybook story
```

### Business Logic Implementation

```text
Implement [describe the business logic]:

Input: [describe input data structure]
Output: [describe expected output]

Business rules:
[list all rules and edge cases]

Constraints:
- Performance: [any requirements]
- Memory: [any limitations]
- Error handling: [how to handle failures]

Include:
- TypeScript types
- Main function
- Helper functions
- Complete error handling
- JSDoc comments
- Unit tests
```

### Database Query Optimization

```text
Optimize this SQL query:
[paste query]

Database: [PostgreSQL/MySQL/etc]
Table sizes: [approximate rows]
Current performance: [baseline]
Target performance: [goal]

Provide:
- Optimized query
- Required indexes
- Explanation of changes
- Expected performance improvement
- Any caveats or trade-offs
```

---

## Testing

### Complete Test Generation

```text
Generate complete tests for:
[paste function/component code]

Testing framework: Jest + React Native Testing Library
Coverage target: 90%+

Include tests for:
- Happy path (normal operation)
- Edge cases (boundary values)
- Error scenarios
- Invalid inputs
- Async operations
- State changes

Use these mock patterns:
[paste your mock patterns]

Follow this test structure:
[paste test template]
```

### E2E Test Scenarios

```text
Create E2E test scenarios for user journey:
[describe the journey step by step]

Tool: [Playwright/Cypress/Detox]
Platform: [Web/iOS/Android]

Include:
- Setup/teardown
- Happy path test
- Each error state test
- Network failure handling
- Slow connection simulation
- Accessibility verification

Use page object pattern:
[paste example]
```

### Test Data Generation

```text
Generate test data for [entity type]:

Generate 30 records:
- 15 valid typical records
- 10 edge cases (max lengths, special chars, unicode)
- 5 invalid records for validation testing

Context: [industry/domain]
Constraints: [any specific requirements]

Format: JSON
Include realistic variations in:
- Names (international)
- Addresses (various formats)
- Phone numbers (international)
- Dates (various timezones)
```

---

## Code Review & Refactoring

### Pre-PR Review

```text
Review this code for a pull request:
[paste your diff or code]

Check for:
1. Logic errors and bugs
2. Security vulnerabilities (OWASP Top 10)
3. Performance issues
4. Memory leaks
5. Missing error handling
6. Accessibility issues
7. Test coverage gaps
8. Code smells

Format output as:
- CRITICAL: Must fix before merge
- MAJOR: Should fix before merge
- MINOR: Consider fixing
- SUGGESTION: Nice to have
```

### Code Refactoring

```text
Refactor this code for better maintainability:
[paste code]

Goals:
- Improve readability
- Reduce complexity (target cyclomatic complexity < 10)
- Extract reusable functions
- Improve naming
- Add appropriate comments
- Follow SOLID principles

Maintain exact functionality.
Explain each change made.
```

### Performance Analysis

```text
Analyze this code for performance issues:
[paste code]

Environment: [Node.js/Browser/React Native]
Current performance: [metrics if known]
Target: [desired metrics]

Identify:
- Bottlenecks
- Unnecessary re-renders
- Memory leaks
- N+1 queries
- Inefficient algorithms

Suggest optimizations with expected impact.
```

---

## Requirements & Documentation

### Requirements Gap Analysis

```text
Analyze these requirements for gaps and ambiguities:
[paste requirements]

Identify:
1. Ambiguous requirements needing clarification
2. Missing edge cases
3. Unstated assumptions
4. Security considerations not mentioned
5. Accessibility requirements missing
6. Performance requirements missing
7. Error handling not specified
8. Platform-specific considerations

Format as questions to ask product owner.
```

### Technical Documentation

```text
Create technical documentation for:
[paste code or describe system]

Include:
1. Overview (what it does)
2. Architecture (how it's built)
3. API Reference (how to use it)
4. Configuration (setup and options)
5. Examples (common use cases)
6. Troubleshooting (common issues)
7. Performance considerations
8. Security considerations

Use markdown format with code examples.
```

### README Generation

```text
Generate a README.md for this project:
[describe project or paste package.json]

Include sections:
- Project title and description
- Features
- Installation
- Usage examples
- API documentation
- Configuration
- Contributing guidelines
- Testing
- Deployment
- License

Make it scannable with clear headers and bullet points.
Include badges for build status, coverage, etc.
```

---

## Debugging

### Bug Analysis

```text
Help debug this issue:

Error message: [paste full error]
Stack trace: [paste trace]
Context: [what you were trying to do]
Code: [paste relevant code]

Environment:
- Platform: [iOS/Android/Web]
- Version: [app version]
- Device: [if relevant]

What I've tried:
[list debugging steps taken]

Provide:
- Likely causes (ranked by probability)
- Debugging steps to try
- Potential fixes
- How to prevent this in future
```

---

## DevOps & Deployment

### CI/CD Pipeline

```text
Create a CI/CD pipeline configuration:

Platform: [GitHub Actions/GitLab CI/Jenkins]
Project type: [React Native/Node.js/etc]

Steps needed:
- Install dependencies
- Run linter
- Run tests
- Build application
- Security scanning
- Deploy to [environment]

Requirements:
- Cache dependencies
- Parallel jobs where possible
- Fail fast on critical issues
- Notification on failure

Generate the complete config file.
```

### Dockerfile Creation

```text
Create a Dockerfile for:

Application: [type and tech stack]
Base image preference: [if any]
Size constraints: [if any]

Requirements:
- Multi-stage build
- Security best practices
- Minimal final image size
- Non-root user
- Health check

Include:
- Dockerfile
- .dockerignore
- Build and run commands
- Comments explaining decisions
```

---

## Livefront-Specific Patterns

### Accessibility Audit

```text
Audit this component for accessibility:
[paste component code]

Check against WCAG 2.1 Level AA:
- Semantic HTML usage
- ARIA labels and roles
- Keyboard navigation
- Screen reader compatibility
- Color contrast
- Focus management
- Error announcements

Output:
- Issues found (with WCAG criterion)
- How to fix each issue
- Code examples of fixes
```

### Design System Compliance

```text
Check if this component follows our design system:
[paste component code]

Design system rules:
- Colors: [paste color tokens]
- Spacing: 4px grid system
- Typography: [paste typography scale]
- Border radius: [values]
- Shadows: [paste shadow tokens]

Identify:
- Hard-coded values that should use tokens
- Inconsistent spacing
- Non-standard patterns
- Accessibility issues

Provide corrected code.
```

### Client-Specific Security Review

```text
Review this code for [industry] compliance:
[paste code]

Industry: [Healthcare/Finance/Government]
Regulations: [HIPAA/PCI/SOC2]

Check for:
- PII handling
- Data encryption requirements
- Audit logging needs
- Access control
- Data retention policies
- Third-party service usage

Flag any compliance issues with severity.
```

---

## Platform-level Prompts

> These prompts are tailored to specific platforms' workflows and tech stacks.

### Mobile Team

#### React Native Specific Debugging

```text
Debug this React Native issue:

Platform: [iOS/Android/Both]
RN Version: [version]
Error: [paste error]
When it happens: [describe trigger]

Relevant code:
[paste component/code]

Metro output:
[paste if relevant]

Native logs:
[paste if available]

Consider:
- Platform differences
- Native module issues
- Metro bundler cache
- Linking issues
- Version mismatches
```

### Frontend Team

#### Component Accessibility Audit

```text
Audit this web component for accessibility:
[paste component code]

Framework: [React/Vue/Angular]
Check against WCAG 2.1 Level AA:
- Semantic HTML usage
- ARIA labels and roles
- Keyboard navigation
- Screen reader compatibility
- Color contrast
- Focus management
- Error announcements

Output:
- Issues found (with WCAG criterion)
- How to fix each issue
- Code examples of fixes
```

### Backend Team

#### Database Performance Analysis

```text
Analyze this database query for performance:
[paste query and schema]

Database: [PostgreSQL/MySQL/MongoDB]
Expected load: [QPS]
Current performance: [if known]

Identify:
- Query optimization opportunities
- Index recommendations
- Schema improvements
- Caching strategies
- Connection pooling needs

Provide specific recommendations with expected impact.
```

### DevOps Team

#### Infrastructure Scaling Strategy

```text
Design a scaling strategy for:
[describe current infrastructure]

Current metrics:
- Traffic: [requests/day]
- Growth rate: [% per month]
- Budget: [constraints]

Requirements:
- Target load: [future scale]
- Availability: [SLA]
- Geographic distribution: [regions]

Provide:
- Current bottlenecks
- Scaling approach (horizontal/vertical)
- Technology recommendations
- Cost projections
- Migration timeline
```

---

## Individual Prompts

> Personal productivity boosters and specialized prompts contributed by team members.

### Example Individual Prompt Template

```text
[Your prompt text here]

Context: [Specific use case, project, or domain expertise]
```

### OpenAPI to Jira Ticket Generator

```text
From the following OpenAPI/Swagger specification, generate a Jira ticket.
The ticket should include:
- **Summary**: A concise title for the endpoint being created.
- **Description**: A detailed explanation of the endpoint, including its purpose, request/response structure, and reference to the spec.
- **Acceptance Criteria**: Clearly defined conditions for completion (e.g., endpoint returns expected responses, adheres to error handling, passes tests).
- **Technical Details**: Any relevant implementation notes, authentication/authorization requirements, or dependencies.

The goal of the ticket is to implement an endpoint that facilitates the request/response defined in the specification.

OpenAPI Spec:
<OpenAPI Spec>
```

Context: API development workflow - useful for converting OpenAPI specifications into actionable development tasks

_Feel free to add your own individual prompts below this section!_

---

## Tips for Custom Prompts

### Structure for Success

1. **Context First**: Always provide context about your tech stack, constraints, and requirements
2. **Be Specific**: Instead of "make it better", say "reduce complexity to under 10 lines"
3. **Provide Examples**: Show existing patterns you want to follow
4. **Request Format**: Specify how you want the output formatted
5. **Iterate**: Start simple, then refine based on output

### The Perfect Prompt Formula

```text
[Role/Context]: You are helping with a React Native app for [industry]

[Task]: [Specific thing you want]

[Constraints]:
- Technical: [versions, libraries, etc]
- Business: [requirements, deadlines]
- Quality: [performance, security, accessibility]

[Input]: [Provide the relevant code/requirements]

[Output Format]: [How you want the response structured]

[Examples]: [Show patterns to follow]
```

### When to Break Down Prompts

If your prompt is over 20 lines, consider breaking it into steps:

1. First prompt: Structure/scaffold
2. Second prompt: Implementation details
3. Third prompt: Tests and edge cases

---

## Contributing to This Library

Found a prompt that works great? Share it!

### Contributing Guidelines by Scope

**Company-wide prompts:**

1. Test it at least three times and get feedback from others
2. Ensure it's useful across multiple projects/tech stacks
3. Document any required context clearly
4. Add to the Company-wide section

**Platform-level prompts:**

1. Test within your platform team first
2. Include platform context and tech stack details
3. Use the scope template at the top of your prompt
4. Add to your platform's subsection

**Individual prompts:**

1. Share experimental or highly specialized prompts
2. Include an overview of the specific use case the prompt covers
3. Others can adapt or promote to broader scope if useful

**Additional sharing**:  
Share in the `#dev-ai` Slack channel.

Remember: The best prompts are the ones that save your teammates time.
