# write-prd Examples

> Interview-first product requirements drafting before implementation planning.

## When to Use

- You need a PRD before engineering planning
- You want to clarify the actual user problem before discussing implementation
- You want goals, non-goals, requirements, and success metrics in one reusable artifact
- You do not want the agent to jump straight into task breakdowns

---

## Antigravity Examples

### Example 1: Product artifact before planning

```
/prd "Draft a PRD for team-based access control in our admin app"
```

**The wrapper skill guides the agent to:**
- interview for goals, constraints, and non-goals
- define users and success criteria
- separate product requirements from implementation details
- hand off to planning only after the PRD is approved

### Example 2: Clarify ambiguous feature intent

```
/prd "We need audit logs for admin actions, but I want a real PRD first"
```

---

## Claude Code Examples

### Example 1: Interview-first feature brief

```bash
@/prd "Create a PRD for usage-based billing"
```

### Example 2: Scope the problem before writing tasks

```bash
@/prd "Draft a PRD for webhook retries and delivery observability"
```

---

## Related Skills

- [brainstorming](examples-skills-brainstorming.md) — frames the problem and explores trade-offs
- [writing-documentation](examples-skills-writing-documentation.md) — keeps the PRD readable and reusable
- [writing-plans](examples-skills-writing-plans.md) — takes over after the PRD is approved
