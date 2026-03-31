---
name: lmf
description: "Use when the user wants a learning-first walkthrough, tutorial-style implementation guidance, or /lmf behavior before or alongside execution."
---

# Learning-First Mode Flow

## Overview

This skill turns a request into a tutorial-first response that teaches the user what is happening before pushing them straight into implementation. It wraps `brainstorming`, `writing-plans`, and `writing-documentation` into one repeatable flow so `/lmf` can stay educational without becoming vague.

`/lmf` is also the manual-coding alternative to `/execute`: it should explain the work, show the shape of the implementation, and include copyable code blocks when code would help the user type the solution themselves instead of having the agent apply it automatically.

**Core principle:** Teach the mental model first, then the implementation path, then the concrete next action.

## The Iron Law

```
WHEN /LMF IS ACTIVE, EXPLAIN THE MENTAL MODEL BEFORE PRESCRIBING THE STEPS.
```

## When to Use

- The user explicitly invokes `/lmf`
- The user asks for a tutorial-first walkthrough before implementation
- The user wants explanation-heavy guidance for planning or documentation work
- The user needs to understand the "why" and "how" before they start coding
- The task benefits from combining design clarification, actionable planning, and reader-friendly documentation
- The user wants to implement the code manually and needs copyable code output instead of automatic execution

## When NOT to Use

- The user wants direct implementation with no explanation overhead (use `executing-plans`)
- The task is a bug fix with a clear reproduction path (use `systematic-debugging`)
- The task is a code review or audit (use the matching audit or review skill)
- The work is purely copy editing with no conceptual explanation needed (use `writing-documentation`)

## Anti-Shortcut Rules

```
YOU CANNOT:
- Lead with code dumps before explaining the problem shape and recommended path
- Skip the mental model and jump straight to a checklist
- Repeat the underlying skills verbatim without synthesizing them for the user's task
- Hide uncertainty behind confident tutorial language -- call out assumptions explicitly
- Produce a generic lesson disconnected from the current codebase or request
- Turn /lmf into a helper-script instruction -- it must work through direct agent output
- Overwhelm the user with exhaustive theory when a shorter explanation would teach faster
- Claim the user is "ready to implement" without giving concrete next actions
- Omit copyable code when the user clearly needs to type the implementation by hand
- Use placeholder snippets, ellipses, or pseudo-code where real code is needed to teach the implementation
```

## Common Rationalizations (Don't Accept These)

| Rationalization | Reality |
|----------------|---------|
| "They asked for help, so I'll just give them the final code" | /lmf exists to teach before it ships code, not to avoid code entirely. |
| "The concepts are obvious" | If they invoked /lmf, the concepts are not obvious enough yet. |
| "I'll explain after the steps" | Once the user is buried in steps, the teaching value is lost. |
| "A long theory dump is more educational" | Good teaching is selective, not bloated. |
| "The wrapper skill can just point to other skills" | A wrapper that does not synthesize is not doing its job. |
| "This request is too practical for tutorial mode" | Practical requests are exactly where explanation-first guidance matters. |
| "If I include code, it stops being /lmf" | /lmf should include code when the code helps the user learn and implement manually. |

## Iron Questions

```
1. What is the one-sentence problem framing for this request? (state it plainly)
2. What mental model does the user need before touching implementation? (name it)
3. Which assumptions am I making because the request or codebase does not prove them yet? (list them)
4. Which existing codebase facts support the guidance I am about to give? (cite files or note when none exist)
5. What is the recommended path, and why is it the best trade-off for this specific request? (explain the trade-off)
6. What are the first concrete actions the user can take after reading this? (list them)
7. Did I teach the "why" before the "do this" instructions? (show the section order)
8. Did I keep the explanation specific to the request instead of generic tutorial filler? (prove it)
9. If I included code, does each snippet clarify a concept and give the user something real to type? (justify it)
10. Can the user act on this output immediately without needing another translation step? (state how)
```

## The Process

### Phase 1: Frame the Request

```
1. IDENTIFY the user's actual job to be done, not just the literal wording.
2. READ the relevant local files or plan documents so the tutorial reflects real context.
3. STATE the problem in one sentence and call out any material uncertainty.
```

### Phase 2: Compose the Underlying Skills

```
1. APPLY brainstorming logic to clarify the goal, trade-offs, and scope boundaries.
2. APPLY writing-plans logic to produce an implementation path with ordered actions.
3. APPLY writing-documentation logic to make the response readable to someone with zero context.
4. SYNTHESIZE the result into one response -- do not hand the user three disconnected mini-docs.
```

### Phase 3: Teach Before Prescribing

```
1. EXPLAIN the mental model first -- what this is, why it matters, and how to think about it.
2. GIVE the recommended approach second -- what path to take and why this path wins.
3. BREAK the work into concrete steps third -- ordered, actionable, and scoped.
4. INCLUDE code when it reduces ambiguity, teaches a non-obvious concept faster, or lets the user implement the change manually.
5. WHEN code is needed, prefer complete, copyable code blocks over pseudo-code or placeholder fragments.
```

### Phase 4: Land the Next Action

```
1. END with the exact next move the user can take.
2. IF implementation is requested, bridge cleanly into execution instead of repeating the lesson.
3. IF documentation is requested, leave the user with wording or structure they can directly adopt.
4. IF the user wants to code manually, give them the exact files and code blocks they can type in themselves.
```

## Output Format

Use this structure unless the user asks for a different shape:

```markdown
# /lmf

## What This Actually Is
[Plain-English framing]

## Mental Model
[How to think about the problem]

## Recommended Path
[Approach and trade-off]

## Step-by-Step
1. [Concrete action]
2. [Concrete action]
3. [Concrete action]

## Copyable Code
[Only include when code is needed to implement or clarify the request.
Prefer complete fenced blocks per file, with file names and no placeholder ellipses.]

## Next Move
[Immediate follow-up action]
```

When the request is implementation-oriented, `/lmf` should usually include a `Copyable Code` section after the explanation. The section should:
- name the file being created or edited
- provide complete, typeable code blocks for the core implementation
- avoid placeholders like `...`, `TODO`, or "fill this in"
- stay scoped to the minimum useful code that teaches the solution

## Red Flags -- STOP

- Opening with implementation steps before explaining the shape of the task
- Writing a generic tutorial that could apply to any repository
- Giving only theory with no next action
- Giving only steps with no explanation
- Giving only file instructions with no actual code when code is necessary to complete the task manually
- Using `/lmf` as a synonym for `/plan` or `/doc` without the learning-first layer
- Treating the wrapper skill as a duplicate copy of the underlying skills

## Integration

- **Before:** `brainstorming` provides the reasoning backbone for the teaching flow.
- **Composes:** `writing-plans` turns the explanation into an actionable path.
- **Composes:** `writing-documentation` keeps the output readable and reusable.
- **After:** `executing-plans` takes over when the user wants to move from tutorial mode into implementation.
