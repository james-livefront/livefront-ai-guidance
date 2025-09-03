# Livefront AI Examples

## Example: Building a Custom Date Range Picker for Healthcare Client

### The Scenario

**Client**: Regional healthcare provider
**Requirement**: Custom date range picker for appointment scheduling that must:

- Match their specific design system
- Support business rules (no weekends, holidays blocked)
- Be HIPAA-compliant (no external libraries that phone home)
- Be fully accessible for vision-impaired users
- Support both iOS and Android with native feel

### Without AI (Previous Approach): ~8 hours

**Morning (3 hours)**:

- Research React Native date picker libraries (30 min)
- Realize none meet the exact requirements (30 min)
- Start building from scratch (2 hours)

**Afternoon (3 hours)**:

- Implement business logic for date validation (1 hour)
- Fight with iOS/Android platform differences (2 hours)

**Next Morning (2 hours)**:

- Add accessibility labels and testing (1 hour)
- Write unit tests (1 hour)

**Total**: 8 hours, and still finding edge cases in QA

### With AI-Assisted Development: ~2 hours

#### Step 1: Initial Implementation (20 minutes)

**Prompt Used**:

```text
Create a React Native date range picker component with these requirements:

Tech stack: React Native 0.72, TypeScript, React Native Testing Library

Design requirements:
- Two date inputs (start date, end date)
- Modal presentation on mobile
- Calendar grid view showing both months side by side on tablet
- Primary color: #0052CC, disabled dates: #F4F5F7

Business logic:
- Disable weekends (Sat/Sun)
- Disable these holidays: [paste holiday array]
- End date must be after start date
- Maximum range: 90 days
- Minimum range: 1 day

Accessibility:
- Full VoiceOver/TalkBack support
- Keyboard navigation on web
- Clear announcements for disabled dates

Include TypeScript interfaces and follow this existing component pattern:
[paste existing component structure]
```text

**AI Output**: ~200 lines of well-structured component code

**Actual Time**: 5 minutes to generate, 15 minutes to review and adjust

#### Step 2: Platform-Specific Refinements (30 minutes)

**The Problem**: AI's first attempt had subtle iOS issues with modal presentation.

**Follow-up Prompt**:

```text
The modal isn't respecting iOS safe areas. Modify the component to:
1. Use react-native-safe-area-context
2. Handle iOS modal gesture dismissal properly
3. Add haptic feedback on date selection for iOS
4. Keep Android's back button behavior intact
```text

**Result**: AI correctly identified the platform-specific adjustments needed.

#### Step 3: Business Logic Edge Cases (30 minutes)

**What AI Missed**: The initial implementation didn't handle the edge case where a user selects a start date, and previously valid end dates become invalid due to the 90-day maximum.

**Human Insight Required**:

- Recognized this UX issue during manual testing
- Decided on the behavior (automatically adjust end date vs. show error)
- Directed AI to implement the chosen solution

**Refinement Prompt**:

```text
When start date changes, if the currently selected end date is now invalid:
1. If it exceeds 90 days, automatically adjust to start date + 90 days
2. Show a toast notification explaining the adjustment
3. Add unit test for this behavior
```text

#### Step 4: Testing (30 minutes)

**Test Generation Prompt**:

```text
Generate comprehensive tests for DateRangePicker including:
1. Business rule validation (weekends, holidays, date ranges)
2. Accessibility assertions (labels, hints, announcements)
3. Platform-specific behavior (iOS modal, Android back button)
4. Edge cases we identified
5. Integration test simulating full user flow

Use React Native Testing Library and follow our existing test patterns:
[paste test example]
```text

**Result**: 15 test cases generated, 12 worked immediately, 3 needed minor fixes

#### Step 5: Final Review and Polish (10 minutes)

**What the Human Did**:

- Verified design matches Figma specs exactly
- Tested with actual screen readers
- Checked for any sensitive data in comments
- Ensured error messages match client's tone/terminology
- Added tracking analytics calls

### The Outcome

**Final Statistics**:

- **Time Saved**: 6 hours (75% reduction)
- **Code Quality**: Same or better (more consistent, better commented)
- **Test Coverage**: 94% (higher than manual approach)
- **Accessibility Score**: 100% WCAG compliance
- **Bugs Found in QA**: 1 minor visual bug (vs typical 3-4)

### Key Insights

#### Where AI Excelled

- Boilerplate component structure
- TypeScript interfaces and types
- Standard accessibility attributes
- Cross-platform compatibility basics
- Test case generation
- Documentation comments

#### Where Human Expertise Was Critical

- Identifying missing edge cases
- UX decisions (how to handle invalid selections)
- Client-specific requirements interpretation
- Design system adherence verification
- Performance optimization decisions
- Security/compliance verification

#### The 70% Problem in Action

AI got us 70% of the way very quickly. The remaining 30% required:

- Deep understanding of the client's users
- Platform-specific experience
- Design sense to catch visual discrepancies
- Business context for edge case decisions

### Lessons Learned

1. **Start with AI, but plan for refinement**: Budget 25-30% of traditional time for the complete task.

2. **The better your prompt context, the better the output**: Including existing patterns and specific requirements upfront saved iteration cycles.

3. **AI struggles with implicit requirements**: It won't know that your healthcare client's users are primarily 55+ and need larger touch targets unless you specify.

4. **Testing still requires human insight**: AI can generate tests, but knowing WHAT to test comes from experience.

5. **Documentation is a hidden win**: AI naturally produces better-commented code, making handoffs easier.

### Template for Your Own Components

Based on this experience, here's our recommended prompt template for component development:

```text
Create a [component type] for [platform] using [tech stack]:

Visual Design:
[Paste Figma specs or describe in detail]

Functional Requirements:
[List all behaviors, validations, and rules]

Non-Functional Requirements:
- Accessibility: [specific standards]
- Performance: [specific metrics]
- Platform-specific: [iOS/Android differences]

Context and Constraints:
- User demographic: [describe]
- Client industry: [mention for compliance]
- No external dependencies that [any restrictions]

Follow this existing pattern:
[Paste your component template]

Include:
- TypeScript interfaces
- Error handling
- Loading states
- Empty states
- JSDoc comments
```text

---

## Example 2: Debugging Production Issue (Web Application)

### The Scenario

**Client**: Financial services firm
**Issue**: Intermittent form submission failures in production, not reproducible locally
**Complexity**: Multi-step form with complex validation, Redux state management, API middleware

### Without AI: ~4 hours of Investigation

Traditional debugging approach:

1. Add console logs everywhere (30 min)
2. Deploy to staging (20 min)
3. Try to reproduce (1 hour)
4. Add more logs (30 min)
5. Review Redux DevTools (1 hour)
6. Finally find race condition (30 min)
7. Fix and verify (30 min)

### With AI: ~45 minutes

**Step 1: Feed AI the Symptoms**:

```text
Production issue in React/Redux form:
- Error: "Cannot read property 'submit' of undefined"
- Happens: ~5% of submissions, only in production
- Stack trace: [paste]
- Redux action log: [paste relevant portion]
- Network tab shows: API call never made
- Form component: [paste component code]
- Redux slice: [paste relevant reducer]

What are likely causes?
```text

**AI Immediately Identified**: Three possible race conditions, with the most likely being unmounting during async validation.

**Step 2: Targeted Investigation**
Instead of shotgun debugging, we added specific logging for the AI-suggested race condition. Found it in 10 minutes.

#### Step 3: Fix with AI Assistance

```text
Fix this race condition where component unmounts during async validation:
[paste problematic code]

Requirements:
- Use AbortController for cleanup
- Maintain existing error handling
- Add appropriate TypeScript types
- Follow our Redux patterns
```text

**Result**: Clean fix with proper cleanup, no side effects.

### The Win

- **Time saved**: 3+ hours
- **Precision**: Targeted investigation vs. blind searching
- **Learning**: AI explained WHY this pattern causes issues
- **Prevention**: AI suggested similar patterns to check elsewhere

---

## When AI Falls Short: A Cautionary Example

### The Scenario

**Task**: Implement custom analytics tracking for user journey through a React Native app
**Why it seemed simple**: Just adding tracking calls, right?

### What Went Wrong

**Initial Prompt**:

```text
Add analytics tracking to this React Native app using Segment. Track all screen views, button taps, and form submissions.
```text

**AI's Output**: Technically correct implementation that tracked EVERYTHING.

**The Problems We Discovered**:

1. **Over-tracking**: AI added tracking to internal navigation that inflated metrics
2. **No Business Context**: Tracked "Cancel" same as "Purchase"
3. **Privacy Violations**: Tracked form data that included PII
4. **Performance Impact**: No batching or throttling
5. **Missing Critical Events**: Didn't track what actually mattered to the client

### The Lesson

AI doesn't understand:

- What metrics actually matter to your client
- Privacy implications of tracking
- Performance budgets
- User journey context
- Business goals behind analytics

**Human expertise required**: Understanding what to measure and why, not just how.

### The Right Approach

1. Define tracking plan with stakeholders first
2. Use AI to implement specific tracking events
3. Human review for privacy and performance
4. Test with actual analytics platform
5. Verify business value of data collected
