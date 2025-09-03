# Livefront AI Prompt Library

## Battle-Tested Prompts for Common Tasks

These prompts have been tested and refined by the Livefront team. Copy, customize, and share your own successful prompts.

---

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
- Comprehensive error handling
- JSDoc comments
- Unit tests
```

### Database Query Optimization

```text
Optimize this SQL query:
[paste query]

Database: [PostgreSQL/MySQL/etc]
Table sizes: [approximate rows]
Current execution time: [seconds]
Target execution time: [seconds]

Provide:
- Optimized query
- Required indexes
- Explanation of changes
- Expected performance improvement
- Any caveats or trade-offs
```

---

## Testing

### Comprehensive Test Generation

```text
Generate comprehensive tests for:
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

### React Native Specific Debugging

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

### Infrastructure as Code

```text
Generate [Terraform/CloudFormation/Pulumi] configuration for:

Service: [describe service]
Cloud provider: [AWS/GCP/Azure]
Environment: [dev/staging/prod]

Resources needed:
- Compute: [instances/containers/serverless]
- Storage: [database/object storage]
- Networking: [VPC/subnets/load balancer]
- Security: [IAM/security groups]

Include:
- Resource definitions
- Variables file
- Outputs
- Backend configuration
- Cost estimates
```

### Monitoring Setup

```text
Create monitoring configuration for [service]:

Monitoring platform: [DataDog/New Relic/Prometheus]

Metrics to track:
- Application metrics: [response time, error rate, throughput]
- Infrastructure metrics: [CPU, memory, disk]
- Business metrics: [user signups, transactions, etc]

Create:
- Dashboard configuration
- Alert rules with thresholds
- Notification channels
- Runbook links

Base thresholds on:
[paste current baseline metrics or SLAs]
```

### Incident Response Runbook

```text
Create an incident response runbook for [service]:

Include sections:
1. Service Overview
   - Architecture diagram
   - Dependencies
   - Key metrics

2. Common Issues
   - Symptom: [description]
   - Likely cause
   - Resolution steps
   - Verification

3. Escalation
   - When to escalate
   - Who to contact
   - Information to provide

4. Recovery Procedures
   - Rollback steps
   - Data recovery
   - Failover process

5. Post-Incident
   - Log locations
   - Metrics to review
   - Report template
```

### Capacity Planning

```text
Analyze capacity needs for [service]:

Current metrics:
- Daily active users: [number]
- Peak QPS: [number]
- Data growth rate: [GB/month]
- Current infrastructure: [describe]

Growth projections:
- 6 months: [expected metrics]
- 1 year: [expected metrics]
- 2 years: [expected metrics]

Provide:
- Resource requirements for each timeframe
- Scaling strategy (vertical vs horizontal)
- Cost projections
- Migration plan if needed
- Risk assessment
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

1. Test it at least 3 times
2. Document what it's for
3. Include any context needed
4. Add it to the appropriate section
5. Share in #ai-prompts Slack channel

Remember: The best prompts are the ones that save your teammates time.
