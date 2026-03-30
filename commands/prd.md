---
name: prd
description: "Create a product requirements document through an interview-first PRD workflow."
disable-model-invocation: true
argument-hint: "[feature-or-product-problem]"
---

# /prd - Product Requirements Document

Create a structured PRD using the local `write-prd` wrapper skill.

## Instructions

1. Read `skills/write-prd/SKILL.md` and follow it exactly.
2. Use `$ARGUMENTS` as the starting feature idea, product problem, or PRD topic.
3. Interview before drafting:
   - clarify the user
   - clarify the problem
   - clarify goals and non-goals
   - clarify constraints, risks, and success definition
4. Compose ALENA's underlying logic:
   - `brainstorming` for discovery and trade-offs
   - `writing-documentation` for the final PRD structure and clarity
   - `writing-plans` only as a handoff suggestion after the PRD is accepted
5. Keep the output product-first:
   - write requirements as outcomes, not code tasks
   - call out assumptions and open questions
   - include explicit non-goals
   - end with the next recommended step

## Success Criteria

- The PRD is grounded in an interview, not guesswork
- The document is understandable without the full chat history
- The output is a real product artifact, not an implementation checklist
