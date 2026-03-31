# lmf Examples

> Learning-first tutorial orchestration that teaches before execution.

## When to Use

- You want explanation before implementation
- You want a tutorial-style breakdown of a feature or change
- You need planning guidance that still teaches the mental model
- You want to type the code yourself instead of letting the agent auto-execute it
- You want one response that combines framing, steps, and next actions

---

## Antigravity Examples

### Example 1: Learn the feature shape first

```
/lmf "Teach me how to add audit logging to this service before we implement it"
```

**The wrapper skill guides the agent to:**
- explain what audit logging is in this codebase context
- describe the mental model before implementation
- recommend an approach and why it fits
- include copyable code when the implementation needs concrete files or snippets
- end with concrete next actions

### Example 2: Tutorial-first planning

```
/lmf "Walk me through the right way to introduce role-based access control"
```

---

## Claude Code Examples

### Example 1: Explanation before `/plan`

```
@/lmf "Help me understand how to structure a webhook retry system"
```

**What Claude Code should produce:**
- what the task actually is
- the mental model
- the recommended path
- ordered steps
- copyable code blocks for the implementation when needed
- the next move into implementation

---

## Related Skills

- [brainstorming](examples-skills-brainstorming.md) — frames the problem and trade-offs
- [writing-plans](examples-skills-writing-plans.md) — turns the teaching flow into actionable tasks
- [writing-documentation](examples-skills-writing-documentation.md) — keeps the explanation readable
