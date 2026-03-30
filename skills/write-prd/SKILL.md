---
name: write-prd
description: "Use when the user wants a PRD, product requirements document, feature brief, or interview-first product specification before implementation."
---

# Product Requirements Writing

## Overview

This skill turns a feature idea or product problem into a structured PRD that a human team or implementation agent can act on. It combines discovery from `brainstorming`, clarity from `writing-documentation`, and only enough planning logic to make the PRD handoff useful without turning the document into an execution task list.

**Core principle:** Discover the real product problem first, then write the PRD that solves that problem clearly.

## The Iron Law

```
NO PRD WITHOUT INTERVIEWING FOR THE ACTUAL PROBLEM, USER, GOAL, AND SCOPE FIRST.
```

## When to Use

- The user asks for a PRD or product requirements document
- The user wants a feature brief before implementation
- The user has an idea but needs it shaped into a product artifact
- The team needs a reusable markdown document describing goals, scope, flows, and requirements
- The request benefits from product clarification before engineering planning

## When NOT to Use

- The user already has an approved PRD and needs an implementation plan instead (use `writing-plans`)
- The task is pure implementation with no product discovery needed (use `executing-plans`)
- The user only wants a technical design or architecture review (use `brainstorming` or the relevant audit skill)
- The user needs copy editing for an existing document rather than PRD creation (use `writing-documentation`)

## Anti-Shortcut Rules

```
YOU CANNOT:
- Start drafting the PRD before clarifying who the user is and what problem is being solved
- Turn the PRD into an execution checklist full of engineering tasks and file paths
- Skip explicit non-goals and scope boundaries -- that guarantees scope creep
- Write generic product language that is not grounded in the user's actual request
- Hide uncertainty -- unknowns and assumptions must be called out explicitly
- Confuse requirements with implementation details -- describe outcomes first, not code first
- Ask vague interview questions when more specific multiple-choice or contrastive questions would work better
- Finish the PRD without a clear success definition and next-step handoff
```

## Common Rationalizations (Don't Accept These)

| Rationalization | Reality |
|----------------|---------|
| "I already understand the feature, I can draft immediately" | If you have not tested your understanding with the user, you are guessing. |
| "A PRD is just a long summary" | A real PRD defines goals, users, scope, requirements, and success. |
| "I'll skip non-goals to keep it short" | Missing non-goals is how projects bloat. |
| "The engineering details will make it more concrete" | Implementation detail is not a substitute for product clarity. |
| "I'll ask one broad question and infer the rest" | Broad questions produce shallow PRDs. |
| "We can figure out the success metrics later" | Then the PRD is not decision-ready. |

## Iron Questions

```
1. What user or operator has this problem? (state the actor clearly)
2. What pain or missed outcome is this PRD trying to solve? (one sentence)
3. What does success look like from the user's point of view? (observable outcome)
4. What is explicitly out of scope? (list non-goals)
5. Which requirements are product requirements versus implementation preferences? (separate them)
6. What assumptions am I making because the user has not confirmed them yet? (list them)
7. What open questions remain that could materially change scope or priority? (list them)
8. Does the PRD read like a product document instead of a coding task list? (justify it)
9. Can an implementation planner use this PRD without needing the whole conversation transcript? (state why)
10. What is the immediate next handoff after this PRD is accepted? (for example `/plan`)
```

## The Process

### Phase 1: Interview for the Real Problem

```
1. IDENTIFY the product idea, feature, or problem statement in the user's words.
2. ASK targeted questions until the user, problem, goal, constraints, and success conditions are clear.
3. USE multiple-choice framing when it speeds up clarification, but do not fake certainty where it does not exist.
4. RECORD assumptions and open questions instead of silently filling gaps.
```

### Phase 2: Shape the Product Narrative

```
1. APPLY brainstorming logic to compare approaches, constraints, and trade-offs.
2. DISTILL the approved direction into a product narrative: who, why, what changes, and what does not.
3. SEPARATE product outcomes from engineering implementation details.
```

### Phase 3: Draft the PRD

```
1. WRITE a concise title and summary.
2. DEFINE problem statement, goals, non-goals, target users, and use cases.
3. LIST functional requirements as product behaviors and outcomes.
4. ADD UX/flow notes, constraints, assumptions, risks, and open questions.
5. INCLUDE success metrics or acceptance signals where possible.
6. END with the next recommended handoff, usually planning or discussion.
```

### Phase 4: Verify the Document

```
1. CHECK that the PRD is understandable without the original chat history.
2. CHECK that non-goals and scope boundaries are explicit.
3. CHECK that requirements are stated as outcomes, not code changes.
4. CHECK that assumptions and open questions are visible instead of buried.
```

## Output Format

Use this structure unless the user asks for a different PRD template:

```markdown
# PRD: [Feature Name]

## Summary
[What this feature is and why it matters]

## Problem Statement
[Who has the problem and what pain exists]

## Goals
- [Goal]

## Non-Goals
- [Explicitly out of scope]

## Target Users
- [Primary user or operator]

## Use Cases
- [Key scenario]

## Requirements
- [Product requirement]

## UX / Experience Notes
- [Flow or interaction guidance]

## Constraints
- [Business, technical, or rollout constraints]

## Success Metrics
- [How success is measured]

## Risks and Open Questions
- [Known uncertainty]

## Next Step
[Recommended handoff, usually planning]
```

## Red Flags -- STOP

- Drafting the PRD before clarifying the user and the problem
- Writing a roadmap or implementation task list instead of a product document
- Missing non-goals
- Missing success metrics or success signals
- Filling critical gaps with invented certainty
- Leaving the document with no obvious next step

## Integration

- **Before:** `brainstorming` helps clarify intent, trade-offs, and alternatives.
- **Composes:** `writing-documentation` turns the clarified product direction into a clean artifact.
- **Optionally hands off to:** `writing-plans` after the PRD is accepted and implementation work should begin.
