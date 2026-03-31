# Example: Brownfield Walkthrough

> Adding a user preferences feature to an existing Python trading bot — full conversation flow showing how the AI learns your codebase first.

---

## The Scenario

You have a **Python trading bot** that's been running for months. It has:
- FastAPI backend
- PostgreSQL database with SQLAlchemy
- 15 service classes in `src/services/`
- Tests with pytest (85% coverage)
- Repository pattern for data access

You want to add **user preferences** — things like notification settings, display currency, and timezone.

---

## Step 1: Init Memory

**You:** Install skills and tell your AI agent:
```
/memory init
```

**AI responds:**
```
✅ Initialized .planning/ directory.
> Running: node planning-tools.cjs init

Created:
  .planning/MEMORY.md
  .planning/STATE.md
  .planning/config.json
  .planning/sessions/
  .planning/decisions/DECISIONS.md
  .planning/plans/
  .planning/context/

Now let me scan your codebase to understand the project...
```

---

## Step 2: Codebase Mapping (Automatic)

**This happens without you doing anything.** The AI reads your code and writes what it learns into `MEMORY.md`:

```markdown
# Project Memory — Trading Bot

## Tech Stack
- Python 3.10, FastAPI, SQLAlchemy, PostgreSQL
- Redis for caching and rate limiting
- pytest with conftest.py pattern

## Architecture
- Repository pattern: all DB access goes through `src/repositories/`
- Service layer: business logic in `src/services/`
- Routers: FastAPI routes in `src/routers/`
- Models: SQLAlchemy models in `src/models/`

## Conventions Discovered
- All models inherit from `BaseModel` (src/models/base.py)
- All repositories inherit from `BaseRepository` (src/repositories/base.py)
- Type hints everywhere (Python 3.10 style: `list[str]`, not `List[str]`)
- Logging via `logger = logging.getLogger(__name__)` — never print()
- Error handling: custom exception classes in `src/exceptions/`
- Config: environment variables via Pydantic Settings

## Existing Tables
- users, orders, positions, signals, trades, balances

## Test Structure
- tests/ mirrors src/ structure
- conftest.py with database fixtures
- 85% coverage
```

**Why this matters:** The AI now knows that you use Repository pattern, type hints are mandatory, logging is via `getLogger`, and there are 6 database tables. It won't violate any of these conventions.

---

## Step 3: Clarify the Feature with `/prd`

**You:**
```
/prd "We need user preferences, but I want the product requirements clarified before implementation planning"
```

**AI responds:**
```markdown
## 📄 Product Clarification: User Preferences

Before I plan implementation, I'll clarify the product artifact against your existing codebase.

- Primary user: authenticated user managing trading-bot preferences
- Core user goals: manage notifications, display currency, timezone, and theme
- Non-goals: strategy configuration, exchange credentials, or portfolio rules
- Constraints from the codebase: FastAPI domain routers, repository pattern, PostgreSQL-backed persistence
- Success definition: a user can view and update preferences without breaking existing account flows
```

**Why this matters:** The PRD grounds the feature in real codebase constraints before the AI starts locking implementation decisions.

---

## Step 4: Discuss — Context-Aware Questions

**You:**
```
/discuss add user preferences feature
```

**AI responds:**

```markdown
## 📋 Discussion: User Preferences

I've scanned your codebase and identified 4 decisions. My recommendations
are based on your existing patterns.

---

### Q1: Storage Approach 🗄️

| | Option | What It Means |
|:---:|:---|:---|
| **A** | New `preferences` table | Normalized, follows your existing pattern |
| **B** | JSONB column on `users` | Flexible, but breaks your normalization |
| **C** | ✏️ Custom | Describe your preference |

> 🏆 **Recommended: A** — Your existing tables (orders, positions, signals)
> all use normalized schemas. Adding a JSONB column would break that convention.

---

### Q2: API Design 🌐

| | Option | What It Means |
|:---:|:---|:---|
| **A** | New `/preferences` router | Dedicated routes, follows your existing pattern |
| **B** | Add to existing `/users` | Fewer routes, but `users.py` is already 200 lines |
| **C** | ✏️ Custom | Describe your preference |

> 🏆 **Recommended: A** — Each domain in your project gets its own router
> file (orders.py, positions.py, signals.py). Preferences should too.

---

### Q3: Preference Categories 📂

| | Option | What It Means |
|:---:|:---|:---|
| **A** | Flat structure | All preferences in one table, simple queries |
| **B** | Categorized | Group by type (notifications, display, trading), more columns |
| **C** | Key-value | Flexible `key: value` pairs, harder to type |
| **D** | ✏️ Custom | Describe your preference |

> 🏆 **Recommended: A** — Start flat, extract categories only if you
> need 20+ preferences. YAGNI.

---

### Q4: Default Values ⚙️

| | Option | What It Means |
|:---:|:---|:---|
| **A** | Database defaults | Defaults in migration, always have a row |
| **B** | Application defaults | Pydantic model with defaults, DB can be null |
| **C** | ✏️ Custom | Describe your preference |

> 🏆 **Recommended: B** — You already use Pydantic Settings elsewhere.
> Defaults in the model means the DB doesn't need a row until the user changes something.

---

### ⚡ Quick Answer

> **All recommended:** `1A 2A 3A 4B`
>
> **Your answer:**
```

**You respond:**
```
1A 2A 3A 4B
```

**AI confirms:**
```markdown
## ✅ Decisions Locked

| # | Decision | Your Choice | Notes |
|---|----------|-------------|-------|
| 1 | Storage | A: New preferences table | 🏆 Follows normalization pattern |
| 2 | API design | A: New /preferences router | 🏆 Follows domain router pattern |
| 3 | Structure | A: Flat structure | 🏆 YAGNI — expand later if needed |
| 4 | Defaults | B: Pydantic application defaults | 🏆 Follows Pydantic Settings pattern |

All decisions align with your existing codebase patterns. ✅
Saved to: .planning/research/user-preferences-context.md
```

---

## Step 5: Plan (Pattern-Aware)

**You:**
```
/plan
```

**AI creates** `.planning/plans/001-user-preferences.md`:

```markdown
## Plan: User Preferences

### Task 1: Model + Repository + Migration

<files>
- src/models/preference.py (CREATE)
- src/repositories/preference_repository.py (CREATE)
- src/db/migrations/versions/003_add_preferences.py (CREATE)
</files>

<action>
Create Preference model inheriting from BaseModel (your convention).
Create PreferenceRepository inheriting from BaseRepository (your convention).
DON'T use JSONB — we decided on a normalized table (locked Q1=A).
DON'T add application defaults here — that's in the service layer (locked Q4=B).

Model fields:
- user_id (FK to users)
- notification_email: bool = True
- notification_push: bool = True
- display_currency: str = "USD"
- timezone: str = "UTC"
- theme: str = "dark"

Use Alembic for migration. Follow your existing migration style
(see 001_initial.py for reference).
</action>

<verify>
Run: alembic upgrade head
Run: pytest tests/models/ -v
Check: Table exists in test database
</verify>

<done>
- [ ] Preference model with type hints
- [ ] PreferenceRepository with CRUD methods
- [ ] Migration creates table with proper constraints
- [ ] Foreign key to users table
</done>

### Task 2: Service + Router + Tests

<files>
- src/services/preference_service.py (CREATE)
- src/routers/preferences.py (CREATE)
- tests/services/test_preference_service.py (CREATE)
- tests/routers/test_preferences.py (CREATE)
- src/main.py (EDIT — add router include)
</files>

<action>
Create PreferenceService with get, update, and reset_to_defaults methods.
Create /preferences router following your existing pattern (see orders.py).
DON'T add to existing /users router (locked Q2=A).

Use Pydantic model defaults (locked Q4=B):
- Service returns defaults if no DB row exists
- Only writes to DB when user explicitly changes a preference

Write tests following your conftest.py pattern with database fixtures.
Use logger = logging.getLogger(__name__) for logging (your convention).
</action>

<verify>
Run: pytest tests/ -v --cov
Run: python -m mypy src/
Check: GET /preferences returns defaults
Check: PATCH /preferences updates and returns new values
</verify>

<done>
- [ ] PreferenceService handles get/update/reset
- [ ] GET /preferences endpoint works
- [ ] PATCH /preferences endpoint works
- [ ] Tests pass with > 85% coverage
- [ ] mypy clean
</done>
```

**Notice:** Every `DON'T` instruction comes from a locked decision. The plan references your **actual files** (`BaseModel`, `BaseRepository`, `orders.py`, `conftest.py`) because the AI read your codebase in Step 2.

---

## Step 6: Execute (Pattern-Conforming)

**You:**
```
/execute
```

**AI works through tasks:**

```
📋 Loading plan: .planning/plans/001-user-preferences.md
📍 State: Phase 0, Plan 0, Task 0

--- Task 1: Model + Repository + Migration ---

Creating src/models/preference.py...
  ↳ Inheriting from BaseModel ✓ (matches your convention)
  ↳ Using Python 3.10 type hints ✓ (list[str], not List[str])
  ↳ Logger via getLogger(__name__) ✓

Creating src/repositories/preference_repository.py...
  ↳ Inheriting from BaseRepository ✓
  ↳ Type hints on all methods ✓

Creating migration...
  ↳ Following existing Alembic style ✓

Running: alembic upgrade head ✅
Running: pytest tests/models/ -v ✅ (3 passed)

✅ Task 1 complete.
> node planning-tools.cjs state advance-task
> git commit -m "feat(preferences): add model, repository, and migration"

--- Task 2: Service + Router + Tests ---

Creating src/services/preference_service.py...
  ↳ Pydantic defaults (no DB row until user changes) ✓
  ↳ Logger via getLogger(__name__) ✓

Creating src/routers/preferences.py...
  ↳ Matches your orders.py pattern ✓
  ↳ Separate router (not on /users) ✓

Creating tests...
  ↳ Uses conftest.py fixtures ✓

Editing src/main.py...
  ↳ Added: app.include_router(preferences_router)

Running: pytest tests/ -v --cov ✅ (47 passed, 87% coverage)
Running: python -m mypy src/ ✅ (clean)

✅ Task 2 complete.
> node planning-tools.cjs state advance-task
> git commit -m "feat(preferences): add service, router, and tests"

📊 Plan complete. 2/2 tasks done.
```

---

## Step 7: Verify

**You:**
```
/verify
```

**AI validates:**

```
✅ All planned files exist (7/7)
✅ Migration runs clean (alembic upgrade head)
✅ All tests pass (47/47 passed, 87% coverage)
✅ mypy clean (0 errors)
✅ GET /preferences returns Pydantic defaults
✅ PATCH /preferences updates values
✅ New code follows existing patterns:
   ✅ BaseModel inheritance
   ✅ BaseRepository inheritance
   ✅ Router pattern matches orders.py
   ✅ Logger via getLogger
   ✅ Type hints (Python 3.10 style)
   ✅ Custom exceptions
   ✅ Test fixtures from conftest.py

Result: PASS — all verification checks passed.
No gaps detected.
```

---

## The Codebase-Conformity Check

During execution, the **codebase-conformity skill** was silently checking for pattern violations. Here's what it would have caught if the AI deviated:

| Violation | What It Would Say |
|:---|:---|
| Using `print()` instead of `logger` | 🔴 "Your codebase uses `logging.getLogger(__name__)`. Replace `print()` with `logger.info()`." |
| Missing type hints | 🟠 "All functions in your codebase have type hints. Add return type to `get_preferences()`." |
| Raw SQL instead of Repository | 🔴 "Your codebase uses Repository pattern. Move DB query to `PreferenceRepository`." |
| Adding to `users.py` | 🔴 "Locked decision Q2=A: Use a new `/preferences` router, not `/users`." |

---

## Next Steps

- 🟢 Starting a new project? → [Greenfield Walkthrough](examples-Getting-Started-Greenfield)
- 💬 More about the MCQ format → [/discuss examples](examples-commands-discuss)
- 🔬 Deep dive into codebase scanning → [codebase-mapping skill](examples-skills-codebase-mapping)
- 🔄 Pattern enforcement → [codebase-conformity skill](examples-skills-codebase-conformity)
