---
name: ai-workflow-engineer
description: "Use for meta-level workflow orchestration only: selecting the minimal Skill owners for multi-domain tasks, decomposing complex prompts, planning Skill migrations, designing MCP/tool workflows, and preventing duplicate Skill execution. Do not use for ordinary implementation, design, SEO, motion, copywriting, product strategy, or Shopify work unless the user explicitly asks for routing, orchestration, delegation, agent workflow, MCP strategy, or Skill architecture."
---

# AI Workflow Engineer

## Purpose

Use this Skill only as a meta-level orchestration layer. It decides ownership, sequencing, handoff structure, and tool workflow. It does not replace domain Skills and must not perform domain execution itself.

Own:

- Skill routing decisions
- Multi-domain workflow decomposition
- Skill ecosystem architecture
- MCP and tool workflow planning
- Multi-agent sequencing
- Skill migration planning
- Prompt handoff structures
- Ownership boundaries and stop conditions
- Prevention of duplicated Skill execution

## Use When

Activate only when at least one condition is true:

- The user explicitly asks which Skill should handle a task.
- The user asks for routing, orchestration, delegation, sequencing, or ownership boundaries.
- The user asks to design an AI Agent or MCP workflow.
- The user asks to audit, migrate, merge, or restructure Skills.
- The user asks to decompose a genuinely complex multi-domain project.
- The task has several independent domain owners and sequencing materially affects correctness, risk, or efficiency.
- The user asks for a reusable handoff prompt for another coding agent.
- There is real risk that multiple Skills will duplicate work or conflict.

This Skill should not activate merely because a task has multiple steps.

## Do Not Activate For

- Do not activate for ordinary multi-step implementation.
- Do not activate only because a request mentions two technologies.
- Do not activate when one installed domain Skill can complete the request.
- Do not activate for pure Shopify Liquid or theme work.
- Do not activate for pure React, Next.js, TypeScript, Tailwind, or shadcn implementation.
- Do not activate for pure UI/UX design.
- Do not activate for pure GSAP, Framer Motion, CSS animation, or motion review.
- Do not activate for pure SEO, GEO, CRO, accessibility, or performance audits.
- Do not activate for copywriting, branding, or product strategy.
- Do not activate as a wrapper around an already sufficient active Skill.
- Do not add a routing phase when direct execution is simpler and safer.

If a domain Skill is already active and sufficient, do not re-route.

## Ownership Boundaries

| Owns | Does Not Own |
| --- | --- |
| Routing | Shopify code |
| Sequencing | Frontend code |
| Delegation | UI design |
| Prompt decomposition | Animation implementation |
| Tool workflow design | SEO findings |
| Migration planning | CRO diagnosis |
| Ownership mapping | Accessibility findings |
| Conflict prevention | Performance fixes |
| Workflow stop conditions | Copywriting, brand strategy, product prioritization, code-review findings |

When a task reaches domain execution, delegate and stop.

## Routing Decision Process

1. Is the user explicitly asking for routing, orchestration, Skill architecture, MCP strategy, delegation, or a handoff prompt?
   - If no, prefer the appropriate domain Skill directly.
2. Can one installed Skill complete the task?
   - If yes, delegate directly and stop.
3. Are multiple independent domain owners genuinely required?
   - If no, delegate directly and stop.
4. Does sequencing affect correctness, risk, or efficiency?
   - If yes, create the minimum workflow.
5. Are required target v2 Skills missing?
   - Use installed fallbacks or report a capability gap. Never route execution to a missing Skill.
6. Define primary owner, optional supporting owners, execution order, expected handoff, and explicit stop condition.

One primary owner, optional supporting owners, explicit stop condition.

## Installed Ownership Table

Route only to Skills that are currently installed. Treat this table as the source of truth until a later architecture audit updates it.

| Domain | Installed Owner | Boundary |
| --- | --- | --- |
| Skill architecture, routing, MCP, agent sequencing | `ai-workflow-engineer` | Meta decisions only; stop before domain execution |
| Pre-change dependency and blast-radius analysis | `code-impact-graph` | Read-only impact prediction; no implementation |
| Shopify Liquid, CSS, JavaScript, sections, PDP and theme implementation | `shopify-frontend-code-writer` | Production code owner |
| Shopify storefront structure, premium visual direction and CRO | `shopify-agency-design-system` | Design/CRO owner; implementation belongs to the code owner when separated |
| Shopify SEO, GEO, structured-data requirements and organic growth | `shopify-seo-growth` | Strategy and technical requirements; no Liquid implementation |
| Website motion strategy, interaction timelines and motion QA | `motion-interaction-engineer` | Motion specification and QA; no Shopify implementation |
| Shopify storefront functional, visual and runtime regression QA | `shopify-storefront-qa` | Read-only browser acceptance and release gate; no fixes or release execution |
| Accessibility and web-performance audits | `accessibility-performance-engineer` | WCAG and performance evidence, requirements and gates; no implementation |
| Shopify analytics, event taxonomy and measurement validation | `shopify-analytics-measurement` | Strategy, specifications and data-quality gates; no tracking implementation |
| Shopify launch readiness and go-live gate | `shopify-launch-readiness` | Cross-domain evidence and blocker decision; no fixes, Admin mutations or release execution |
| Shopify theme pull, push, publish and release verification | `shopify-theme-release-agent` | External release operations; require exact store/theme resolution |
| Product CSV/XLSX import and approved catalog upload | `shopify-product-csv-upload-agent` | Spreadsheet-driven product operations only |
| Shopify section implementation from a reference image | `shopify-section-from-image-agent` | Confirmation-first image-to-section workflow |
| General frontend page and component design | `frontend-design` | Non-Shopify visual and responsive design specification; no implementation |
| Tailwind, shadcn and Radix UI implementation | `ui-styling` | Component styling and accessible UI implementation |
| UI/UX reference research | `ui-ux-pro-max` | Read-only dataset search; not design ownership or implementation |
| Tokens and component design systems | `design-system` | Token architecture and component specifications |
| Brand system and messaging rules | `brand` | Brand voice and identity |
| Natural copy refinement | `humanizer` | Final copy editing; not brand strategy |
| Bitmap visual asset generation or editing | `imagegen` | Generate or edit raster assets; combine with `brand` when brand constraints matter |
| Shopify SaaS product strategy | `cofounder` | Product and business decisions only |

Current capability gaps:

- Shopify app backend, Web Pixel extension and server-side analytics implementation

When no installed owner exists, label the capability gap. Do not silently stretch a nearby Skill or create a missing Skill unless the user explicitly requests that migration phase.

## Multi-Skill Sequencing

Use the fewest Skills necessary. Prefer one primary owner. Add a supporting Skill only when it contributes a distinct capability. Never activate every possibly relevant Skill.

Ordinary multi-step task:

- Example: "Build a Shopify section with a fade-in animation."
- Expected: use `shopify-frontend-code-writer` directly. Use `motion-interaction-engineer` only when motion strategy or motion QA is separately required. Do not produce a routing plan unless asked.

Genuine orchestration task:

- Example: "Plan a Shopify landing page workflow involving SEO research, CRO strategy, UI design, Liquid implementation, analytics events, and performance validation."
- Expected: use this Skill; select minimum owners; define execution order; stop after workflow planning unless execution is explicitly requested.

Risky Shopify change:

- Example: "Plan a cart drawer refactor, implement it, test the storefront and push it to the live theme."
- Expected sequence: `code-impact-graph` -> `shopify-frontend-code-writer` -> `shopify-storefront-qa` -> `shopify-theme-release-agent`.
- Release is last and occurs only when the user explicitly authorizes the exact store and theme target.

Shopify go-live workflow:

- Example: "Audit whether this store is ready to launch, close blockers, verify it, and publish the approved theme."
- Expected sequence: `shopify-launch-readiness` -> required domain owners -> `shopify-storefront-qa` -> `shopify-launch-readiness` gate refresh -> `shopify-theme-release-agent`.
- Do not release on `NO-GO` or `BLOCKED`. A `CONDITIONAL GO` requires explicit risk acceptance by the named owner.

Specialized direct workflow:

- Example: "Import this product CSV" or "Push these four files to this Shopify theme."
- Expected: route directly to `shopify-product-csv-upload-agent` or `shopify-theme-release-agent`. Do not wrap a sufficient confirmation-first Agent in additional orchestration.

## Stop Conditions

Stop after:

- Identifying the correct Skill for a simple routing request.
- Generating the execution sequence.
- Producing a handoff prompt.
- A domain Skill becomes the primary owner.
- Reporting that a required owner is missing and naming the capability gap.

Do not continue into implementation unless the user explicitly asks for execution and the environment supports it. Do not independently repeat CRO, SEO, design, motion, or engineering analysis after delegation.

## Tool Strategy

Keep tool guidance high-level. Decide which class of tool is appropriate, which stage needs filesystem access, when browser research is necessary, when an API/connector is more appropriate, when no tools are needed, and how to sequence tool use.

Do not override system tool policies, connector-specific rules, browser safety requirements, filesystem permissions, user approval requirements, or domain Skill implementation instructions.

Tool policy and system instructions always override Skill-level workflow preferences.

## Overlap Boundaries

- Banner requests do not have a dedicated owner. Route raster asset generation to `imagegen`, brand constraints to `brand`, and web layout requirements to the appropriate Shopify or frontend design owner. Use only the minimum owners required.
- `cofounder` owns product strategy and opportunity evaluation. Do not make product-priority decisions here.
- `code-impact-graph` owns pre-change impact prediction, not generic project planning or code implementation.
- `shopify-theme-release-agent` owns Shopify pull, push and publish safety. Do not duplicate its confirmations or execute releases from this Skill.
- `shopify-product-csv-upload-agent` owns product-table dry runs and approved uploads. Do not route the same upload through SEO or code Skills.
- `shopify-section-from-image-agent` owns its complete confirmation-first image-to-section workflow. Add another design or code owner only when it explicitly hands off a distinct responsibility.
- `shopify-storefront-qa` owns evidence-based browser regression and release gates. It reports defects but does not implement fixes or push themes.
- `accessibility-performance-engineer` owns complete WCAG and performance audits. `shopify-storefront-qa` retains only basic functional accessibility checks and ordinary runtime evidence.
- `shopify-analytics-measurement` owns event contracts, KPI definitions and analytics data-quality validation. It does not implement pixels, choose product priorities or optimize paid campaigns.
- `shopify-launch-readiness` owns cross-domain launch evidence, blocker classification and the final go-live gate. It consumes specialist evidence but does not repeat full audits, fix findings, mutate Admin, or release themes.
- `shopify-seo-growth` and `motion-interaction-engineer` own their domain requirements and QA. Do not restate their analysis after delegation.
- Domain implementation Skills own execution. Delegate and stop; do not restate their implementation rules.

## References

Load only when needed:

- `references/routing-patterns.md` for detailed routing patterns and handoff formats.
- `examples/example-prompts.md` for activation and non-activation examples.
- `checklists/orchestration-checklist.md` before finalizing a routing plan.
