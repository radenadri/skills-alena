---
name: lmf
description: "Run the learning-first /lmf flow for tutorial-style planning, explanation, and copyable code before execution."
disable-model-invocation: true
argument-hint: "[topic-or-task]"
---

# /lmf - Learning-First Tutorial Flow

Guide the user through the request in a tutorial-first way using the local `lmf` wrapper skill.

## Instructions

1. Read `skills/lmf/SKILL.md` and follow it exactly.
2. Use the request in `$ARGUMENTS` as the topic to explain, plan, or teach.
3. Build the response around this order:
   - What this actually is
   - Mental model
   - Recommended path
   - Step-by-step actions
   - Copyable code
   - Next move
4. Compose the existing ALENA skills inside the response:
   - `brainstorming` for intent and trade-offs
   - `writing-plans` for the ordered implementation path
   - `writing-documentation` for clarity and reuse
5. Keep the output local-first and tutorial-first:
   - Explain before optimizing
   - Be specific to the current request and codebase
   - Include copyable code blocks when the user needs to implement manually or when code would teach faster than prose
   - Prefer complete file-level snippets over pseudo-code and placeholders
   - Do not turn `/lmf` into a shell-script or helper-script instruction

## Success Criteria

- The user understands the problem shape before seeing the steps
- The response contains a clear recommendation with trade-offs
- The response includes copyable code when implementation detail is needed
- The next action is explicit enough to execute immediately
