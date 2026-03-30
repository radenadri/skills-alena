---
description: Create a product requirements document through an interview-first PRD workflow
---

## Steps

1. Read `skills/write-prd/SKILL.md` and use it as the governing workflow.

2. Identify the real PRD topic from the user's request:
   - what feature, product problem, or initiative is being described?
   - who is affected?
   - what information is still missing before drafting?

3. Gather just enough local context to stay grounded:
// turbo
```bash
pwd
rg -n "$ARGUMENTS|PRD|requirements|feature|README|CLAUDE|GEMINI" . --glob '!node_modules' --glob '!dist' | head -40
```

4. Interview first:
   - clarify the user and problem
   - clarify goals and non-goals
   - clarify constraints, risks, and success conditions
   - record assumptions and open questions instead of inventing answers

5. Draft the PRD in product-document form:
   - **Summary**
   - **Problem Statement**
   - **Goals**
   - **Non-Goals**
   - **Target Users**
   - **Use Cases**
   - **Requirements**
   - **Constraints**
   - **Success Metrics**
   - **Risks and Open Questions**
   - **Next Step**

6. Keep `/prd` product-first:
   - do not turn it into a code implementation checklist
   - requirements should describe outcomes and behaviors
   - implementation planning belongs after the PRD is accepted

7. If the user wants to move forward after the PRD is approved, bridge cleanly into `/plan`, `/execute`, or the next planning step.
