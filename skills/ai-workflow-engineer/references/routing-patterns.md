# Routing Patterns

Use this reference only after `ai-workflow-engineer` has legitimately activated.

## Minimal Routing Pattern

1. State the explicit orchestration trigger.
2. Name the primary owner.
3. Name supporting owners only when necessary.
4. State execution order.
5. State the stop condition.

Output should be shorter than the work it delegates.

## Installed Owner Pattern

Use only current installed owners for execution.

```text
Primary owner: <installed Skill>
Supporting owners: <installed Skills only, or none>
Capability gaps: <none or list>
Execution order: <minimum justified sequence>
Stop condition: <explicit boundary>
```

Never route execution to a missing Skill. Do not stretch a nearby Skill to hide a capability gap.

## Strategy Before Code

Use only when business, conversion, SEO, or cross-domain risk materially affects implementation order.

1. Strategy/growth owner defines outcome and requirements.
2. UI/UX owner defines user-facing structure.
3. Implementation owner writes code.
4. Validation owner checks the relevant behavior where installed.
5. Release owner performs external deployment only after explicit authorization.

Do not include every stage by default. Omit stages that do not contribute a distinct decision or verification result.

## Code First

Use when one installed Skill can handle the task.

Examples:

- Fix a Liquid schema error.
- Add a shadcn pricing component.
- Add a GSAP animation to an already-scoped component.
- Rewrite homepage copy.
- Pull or push a clearly identified Shopify theme.
- Import an approved product CSV after its owning Agent completes the dry run.

Expected behavior: do not use `ai-workflow-engineer`; delegate directly.

## Audit Then Plan

Use when the user asks to audit, migrate, merge, restructure, or prevent duplicated work.

1. Audit current state.
2. Identify owners and overlaps.
3. Rank risks.
4. Produce migration or routing plan.
5. Stop unless execution is explicitly requested.

## Multi-Agent Sequencing

Parallelize only independent work.

- SEO, analytics and `accessibility-performance-engineer` audits may run in parallel when their evidence is independent.
- UI design and implementation should usually sequence, not parallelize.
- Two agents should not rewrite the same file or own the same decision.
- If a domain Skill is already sufficient, do not add an agent layer.

## Shopify Change Pipeline

Use only when the user explicitly asks for cross-domain planning or end-to-end sequencing.

1. Use `code-impact-graph` before shared, stateful, lifecycle-sensitive or high-risk changes.
2. Use the minimum specialist audit owner only when requirements are unresolved: SEO, CRO, motion, accessibility, performance or analytics.
3. Use `shopify-frontend-code-writer` for theme implementation.
4. Use `shopify-analytics-measurement` for event/payload validation when measurement is in scope.
5. Use `accessibility-performance-engineer` for the requested standards or performance gate after implementation when required.
6. Use `shopify-storefront-qa` for functional, visual, responsive and runtime regression evidence.
7. Use `shopify-launch-readiness` when the user asks for cross-domain prelaunch evidence or a go-live decision.
8. Use `shopify-theme-release-agent` only when the user asks to pull, push, publish or release.

Do not put release before verification. Do not activate impact analysis for isolated low-risk edits unless requested.

For a full go-live workflow, use `shopify-launch-readiness` to identify blockers, route only necessary remediation, consume `shopify-storefront-qa` evidence, refresh the gate, and hand off to `shopify-theme-release-agent` only after an acceptable gate and explicit release authorization.

## Specialized Shopify Agent Pattern

- Reference image to section: `shopify-section-from-image-agent` directly.
- Product spreadsheet import: `shopify-product-csv-upload-agent` directly.
- Store launch-readiness audit: `shopify-launch-readiness` directly.
- Theme pull/push/publish: `shopify-theme-release-agent` directly.

These Agents already contain confirmation and stop gates. Do not duplicate those gates in an orchestration wrapper.

## Handoff Prompt Format

Use when the user asks for a reusable prompt for another coding agent.

```text
Role:
Primary objective:
Relevant files/context:
Owner Skill / domain:
Inputs:
Constraints:
Steps:
Validation:
Stop condition:
Out of scope:
```

## Tool Workflow Pattern

1. Decide whether tools are needed at all.
2. Prefer filesystem tools for local files and code.
3. Prefer purpose-built MCP/connectors/CLIs for structured remote systems.
4. Use browser tools for visual state, logged-in UI, or interactive validation.
5. Use external APIs only when fresh remote data or official programmatic access is required.
6. Apply all system permissions and connector-specific rules before Skill preferences.
