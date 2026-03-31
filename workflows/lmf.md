---
description: Run the learning-first /lmf flow for tutorial-style explanation, planning, and copyable code guidance
---

## Steps

1. Read `skills/lmf/SKILL.md` and use it as the governing workflow.

2. Identify the user's real job to be done:
   - What are they trying to understand or accomplish?
   - What local files or plans should be read first?
   - What assumptions still need to be called out explicitly?

3. Gather just enough local context to stay specific:
// turbo
```bash
pwd
rg -n "$ARGUMENTS|lmf|tutorial|plan|README|CLAUDE|GEMINI" . --glob '!node_modules' --glob '!dist' | head -40
```

4. Compose the underlying ALENA skills into one response:
   - Use `brainstorming` logic to frame the goal and trade-offs
   - Use `writing-plans` logic to turn the answer into ordered actions
   - Use `writing-documentation` logic to keep the explanation readable

5. Respond in this order:
   - **What This Actually Is** - plain-English framing
   - **Mental Model** - how to think about the task
   - **Recommended Path** - what to do and why
   - **Step-by-Step** - concrete actions in order
   - **Copyable Code** - complete code blocks for the files the user may type manually when code is needed
   - **Next Move** - the immediate follow-up action

6. Keep `/lmf` tutorial-first:
   - Explain before prescribing
   - Stay local-first and grounded in the current repo
   - Include copyable code when it teaches faster than prose or when the user wants to implement manually
   - Avoid placeholder snippets, pseudo-code, or "fill this in later" examples
   - Do not delegate to a local helper script

7. If the user wants to move from teaching mode to implementation, bridge cleanly into `/plan`, `/execute`, or direct execution as appropriate.
