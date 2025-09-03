<!-- markdownlint-disable MD012 MD022 MD031 MD032 MD033 MD040 -->
# Context Engineering: Good vs Bad Examples

*The difference between frustration and flow? How you provide context to AI.*

---

## The Context Hierarchy

Not all context is equal. Here's what matters, in order:

1. **What you're trying to achieve** (goal)
2. **Current state** (what exists now)
3. **Constraints** (technical, business, compliance)
4. **Expected output** (format, structure)
5. **Examples** (when patterns exist)

Get these right, and AI becomes genuinely helpful.

---

## Feature Development Context

### Bad Context

"Create a date picker component"
**Why it fails:**

- No platform specified
- No constraints given
- No integration context
- No business requirements
- AI will generate generic garbage

### Good Context
Create a date picker component for our React Native healthcare app.

CURRENT STATE:
- React Native 0.72, TypeScript
- Existing DateInput component (attached below)
- Using react-hook-form for form management
- Nativewind for styling

REQUIREMENTS:
- Patients select appointment dates
- Must show availability (fetched via useAvailableSlots hook)
- Prevent selection of: weekends, holidays, dates >90 days out
- Accessibility: Voice-over support required

TECHNICAL CONSTRAINTS:
- Must work iOS 14+ and Android 8+
- Integrate with existing form validation
- Follow our design system (primary: #0066CC)

OUTPUT:
- TypeScript component
- Unit tests using React Native Testing Library
- Storybook story for component library

EXISTING CODE TO INTEGRATE WITH:
[paste DateInput component]
[paste useAvailableSlots hook signature]

**Why it works:**

- Clear technical context
- Business requirements specified
- Integration points defined
- Output format explicit
- Existing code provided

---

## Debugging Context

### Bad Context

"This function doesn't work, fix it:

function calculate(data) {
  return data.reduce((a, b) => a + b.value);
}
"

**Why it fails:**

- No error description
- No expected behavior
- No input examples
- No environment context

### Good Context

Debug this aggregation function that's throwing an error in production.

ERROR:

```text
TypeError: Cannot read property 'value' of undefined
  at Array.reduce (<anonymous>)
  at calculate (metrics.ts:42:15)
```

FUNCTION:

```typescript
function calculateMetricTotal(dataPoints: DataPoint[]): number {
  return dataPoints.reduce((sum, point) => sum + point.value);
}
```

EXPECTED BEHAVIOR:

- Sum all value properties from DataPoint objects
- Handle missing/null values (treat as 0)
- Return 0 for empty arrays

ACTUAL BEHAVIOR:

- Works in development
- Fails in production after 5-10 minutes
- Error suggests undefined element in array

SAMPLE INPUT THAT FAILS:

```json
[
  {"timestamp": 1234567890, "value": 42},
  {"timestamp": 1234567891, "value": 38},
  {"timestamp": 1234567892},  // Note: missing value
  {"timestamp": 1234567893, "value": null}
]
```

ENVIRONMENT:

- Node.js 18.x on AWS Lambda
- Data comes from DynamoDB stream
- TypeScript 5.x with strict mode

What's wrong and how should I fix it?

- **Why it works:**


- Exact error message provided
- Expected vs actual behavior clear
- Failing input example given
- Environment context included
- Clear question at end

---

## Code Review Context

### Bad Context


"Review this code for best practices"

[dumps 500 lines of code]


**Why it fails:**

- No focus areas specified
- No team standards mentioned
- Too much code at once
- No specific concerns raised

### Good Context

Review this authentication middleware for security and performance.

CONTEXT:

- Express.js middleware for our API
- Handles ~10K requests/minute
- JWT-based authentication
- Redis for session storage

SPECIFIC CONCERNS:

1. Is the JWT verification secure?
2. Are we handling rate limiting correctly?
3. Any performance bottlenecks?
4. Missing error cases?

OUR STANDARDS:

- All errors must be logged
- No console.log in production
- Early returns preferred
- 100ms max middleware execution

CODE:

```javascript
export const authMiddleware = async (req, res, next) => {
  const token = req.headers.authorization?.split(' ')[1];

  if (!token) {
    return res.status(401).json({ error: 'No token' });
  }

  try {
    const decoded = jwt.verify(token, process.env.JWT_SECRET);
    const session = await redis.get(`session:${decoded.userId}`);

    if (!session) {
      return res.status(401).json({ error: 'Invalid session' });
    }

    req.user = decoded;
    next();
  } catch (error) {
    res.status(401).json({ error: 'Invalid token' });
  }
};
```

Focus on the four specific concerns above.

**Why it works:**

- Clear review focus
- Performance context given
- Team standards specified
- Specific questions asked
- Reasonable code length

---

## Test Generation Context

### Bad Context

"Write tests for this function"

function processOrder(order) {
  // ... 200 lines of code
  }

**Why it fails:**

- No test framework specified
- No coverage requirements
- No business rules explained
- Function too large

### Good Context

Generate unit tests for this order validation function.

FUNCTION PURPOSE:
Validates e-commerce orders before payment processing

BUSINESS RULES TO TEST:
1. Orders must have at least 1 item
2. Total must be > $0 and < $10,000
3. Shipping address required for physical goods
4. Digital goods don't need shipping
5. Coupon codes must be valid and not expired

TEST FRAMEWORK:
- Jest with TypeScript
- Use describe/it blocks
- Mock external services
- Aim for 100% branch coverage

FUNCTION:
```typescript
interface Order {
  items: OrderItem[];
  total: number;
  shipping?: Address;
  couponCode?: string;
}

async function validateOrder(order: Order): Promise<ValidationResult> {
  const errors: string[] = [];

  if (order.items.length === 0) {
    errors.push('Order must contain at least one item');
  }

  if (order.total <= 0 || order.total >= 10000) {
    errors.push('Order total must be between $0 and $10,000');
  }

  const hasPhysicalGoods = order.items.some(item => !item.isDigital);
  if (hasPhysicalGoods && !order.shipping) {
    errors.push('Shipping address required for physical goods');
  }

  if (order.couponCode) {
    const coupon = await validateCoupon(order.couponCode);
    if (!coupon.isValid) {
      errors.push(`Invalid coupon: ${coupon.reason}`);
    }
  }

  return {
    isValid: errors.length === 0,
    errors
  };
}

EXTERNAL DEPENDENCIES TO MOCK:

- validateCoupon: async function that calls coupon service

Generate comprehensive tests covering all business rules and edge cases.

```

**Why it works:**

- Business rules enumerated
- Test framework specified
- Mocking strategy clear
- Coverage goals stated
- External dependencies identified

---

## Architecture Context

### Bad Context

"Design a microservices architecture for an e-commerce platform"

**Why it fails:**

- No scale requirements
- No existing constraints
- No team context
- Too broad

### Good Context

Design the authentication service for our e-commerce microservices migration.

CURRENT STATE:
- Monolithic Rails app with Devise
- 50K daily active users
- PostgreSQL with users table (2M records)
- Moving to microservices incrementally

REQUIREMENTS:
- Support existing session-based auth (migration period)
- Add JWT for service-to-service communication
- Social login (Google, Apple, Facebook)
- 2FA for accounts >$1000 lifetime value
- GDPR compliant (EU customers)

CONSTRAINTS:
- Team: 3 developers, 6 month timeline
- Budget: Use existing AWS services
- Must maintain 99.9% uptime during migration
- Keep using PostgreSQL (team expertise)
- Node.js/TypeScript (team standard)

INTEGRATION NEEDS:
- Order Service: Verify user identity
- Payment Service: Validate high-value transactions
- Notification Service: Send auth emails
- Legacy Rails: Share sessions during migration

PLEASE PROVIDE:
1. High-level architecture diagram
2. API endpoints needed
3. Database schema
4. Migration strategy from monolith
5. Security considerations
```

**Why it works:**

- Current state documented
- Clear scope (just auth)
- Team constraints acknowledged
- Integration points specified
- Specific deliverables requested

---

## Documentation Context

### Bad Context

"Document this API endpoint"

app.post('/api/users', createUser);
```

**Why it fails:**

- No documentation format
- No audience specified
- No detail level indicated
- Missing implementation

### Good Context

Create OpenAPI documentation for our user creation endpoint.

ENDPOINT DETAILS:
- POST /api/v1/users
- Creates new user account
- Returns created user with generated ID
- Requires API key authentication

REQUEST BODY:
```typescript
{
  email: string;        // Required, must be unique
  password: string;     // Required, min 8 chars, 1 number, 1 special
  firstName: string;    // Required, 1-50 chars
  lastName: string;     // Required, 1-50 chars
  phone?: string;       // Optional, E.164 format
  marketingOptIn?: boolean; // Optional, defaults to false
}
```

RESPONSES:

- 201: User created successfully (return user object without password)
- 400: Validation error (list all validation failures)
- 409: Email already exists
- 429: Rate limited (max 10 requests per hour per IP)
- 500: Server error

BUSINESS RULES:

- Email must be verified within 24 hours
- Temporary password for enterprise SSO users
- Marketing opt-in requires explicit consent
- GDPR: EU users get different terms

GENERATE:
OpenAPI 3.0 specification with:

- Full schema definitions
- Example requests/responses
- Security requirements
- Rate limiting headers
- Error response schemas

```

**Why it works:**
- Format specified (OpenAPI)
- All responses documented
- Business rules included
- Security requirements clear
- Examples requested

---

## Performance Optimization Context

### Bad Context

"Make this code faster"

[pastes entire file]
```

**Why it fails:**

- No performance metrics
- No bottleneck identified
- No target improvement
- Too much code

### Good Context

Optimize this data aggregation function that's our bottleneck.

PERFORMANCE ISSUE:
- Current: 3.2 seconds for 10K records
- Target: <500ms
- Profiler shows 85% time in this function

FUNCTION:
```javascript
function aggregateUserMetrics(users) {
  return users.map(user => {
    const orders = await fetchOrders(user.id);
    const reviews = await fetchReviews(user.id);
    const support = await fetchSupportTickets(user.id);

    return {
      userId: user.id,
      totalOrders: orders.length,
      avgOrderValue: orders.reduce((sum, o) => sum + o.total, 0) / orders.length,
      reviewCount: reviews.length,
      avgRating: reviews.reduce((sum, r) => sum + r.rating, 0) / reviews.length,
      supportTickets: support.length,
      lastActive: Math.max(
        ...orders.map(o => o.date),
        ...reviews.map(r => r.date),
        ...support.map(s => s.date)
      )
    };
  });
}
```

CONSTRAINTS:

- Node.js 18.x
- Can modify database queries
- Can't add caching layer (yet)
- Must maintain exact same output
- PostgreSQL database

CURRENT DATABASE LOAD:

- fetchOrders: ~50ms per call
- fetchReviews: ~30ms per call
- fetchSupportTickets: ~40ms per call
- Database connection pool: 20

What's the bottleneck and how do we fix it?

```

**Why it works:**

- Metrics provided
- Target specified
- Bottleneck identified
- Constraints listed
- Specific question

---

## Migration Context

### Bad Context

"Convert this jQuery code to React"

[pastes 1000 lines of jQuery spaghetti]

**Why it fails:**

- No React version/setup
- No state management approach
- No component structure
- Too much code at once

### Good Context

Migrate this jQuery form validation to React with hooks.

CURRENT JQUERY CODE:
```javascript
// Registration form with dynamic validation
$('#register-form').on('submit', function(e) {
  e.preventDefault();
  $('.error').remove();

  var email = $('#email').val();
  var password = $('#password').val();
  var confirm = $('#confirm').val();

  var errors = [];

  if (!email.match(/^[^\s@]+@[^\s@]+\.[^\s@]+$/)) {
    errors.push({field: 'email', message: 'Invalid email'});
  }

  if (password.length < 8) {
    errors.push({field: 'password', message: 'Min 8 characters'});
  }

  if (password !== confirm) {
    errors.push({field: 'confirm', message: 'Passwords must match'});
  }

  if (errors.length) {
    errors.forEach(function(err) {
      $('#' + err.field).after('<span class="error">' + err.message + '</span>');
    });
  } else {
    $.post('/api/register', {email: email, password: password})
      .done(function() { window.location = '/dashboard'; })
      .fail(function(xhr) { alert('Registration failed'); });
  }
});

// Live validation
$('#password, #confirm').on('keyup', function() {
  $('.password-match-error').remove();
  if ($('#confirm').val() && $('#password').val() !== $('#confirm').val()) {
    $('#confirm').after('<span class="password-match-error">Passwords do not match</span>');
  }
});
```

TARGET REACT SETUP:

- React 18 with TypeScript
- React Hook Form for form management
- Zod for validation schemas
- TanStack Query for API calls
- Tailwind for styling

REQUIREMENTS:

- Maintain all validation rules
- Keep live password matching
- Show inline error messages
- Accessible (ARIA labels)
- Add loading states

PROVIDE:

1. React component with hooks
2. Zod validation schema
3. Integration with React Hook Form
4. API call with TanStack Query

```

**Why it works:**
- Specific code section
- Target stack defined
- Requirements preserved
- Modern patterns requested
- Clear deliverables

---

## The Meta Pattern

### The Perfect Context Formula

[WHAT] I need to [specific task]

[WHERE] In our [technology stack/environment]

[CURRENT STATE] We currently have [existing code/setup]

[REQUIREMENTS] It must [business/technical requirements]

[CONSTRAINTS] We cannot [limitations/restrictions]

[OUTPUT] Please provide [specific format/structure]

[FOCUS] Specifically focus on [main concerns]
```

### Example Using the Formula

[WHAT] I need to implement rate limiting for our API

[WHERE] In our Express.js REST API running on AWS ECS

[CURRENT STATE] We currently have no rate limiting, seeing abuse on /api/search

[REQUIREMENTS] It must:
- Limit by IP address
- Allow 100 requests per minute for anonymous users
- Allow 1000 requests per minute for authenticated users
- Return 429 with Retry-After header
- Log rate limit violations

[CONSTRAINTS] We cannot:
- Use external services (must be in-process)
- Modify our Redis setup
- Add significant latency (<5ms overhead)

[OUTPUT] Please provide:
- Middleware implementation
- Redis-based token bucket
- Integration instructions
- Test examples

[FOCUS] Specifically focus on:
- Handling distributed rate limiting across multiple instances
- Graceful degradation if Redis is unavailable
```

---

## Quick Reference: Context Checklist

Before sending any prompt, check:

### Context Checklist

- [ ] **Goal**: What am I trying to achieve?
- [ ] **Current State**: What exists now?
- [ ] **Tech Stack**: What technologies/versions?
- [ ] **Requirements**: What must it do?
- [ ] **Constraints**: What can't change?
- [ ] **Integration**: What must it work with?
- [ ] **Output**: What format do I need?
- [ ] **Examples**: Can I show good/bad examples?
- [ ] **Focus**: What's most important?

### Context Anti-Patterns

- Dumping entire files without focus
- No example inputs/outputs
- Missing error messages
- No version numbers
- Assuming AI knows your setup
- No success criteria
- Too much context (cognitive overload)
- Too little context (ambiguity)

---

## Remember

Good context is an investment. Spend 2 minutes writing good context, save 20 minutes of back-and-forth.

The AI can't read your mind, but with good context, it doesn't need to.
