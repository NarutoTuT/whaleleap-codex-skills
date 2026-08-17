---
name: code-impact-graph
description: Map repository relationships and predict the blast radius of proposed code changes before implementation. Use when a user asks what files, components, selectors, events, data flows, Shopify theme resources, pages, or tests may be affected by a change; requests dependency or architecture mapping; plans a risky refactor, deletion, shared utility change, cart or theme lifecycle change; or asks for pre-change engineering risk analysis. Produce evidence-backed impact tiers, test scope, rollback points, and implementation handoff. Do not use for writing business code, ordinary style review, UI design, SEO, or performance optimization.
---

# Code Impact Graph

## Purpose

Predict how a proposed change can propagate through a repository before any implementation begins. Build a task-scoped relationship graph, identify affected behavior, assign evidence-backed risk, and define the minimum safe implementation and verification boundary.

This Skill is a read-only analysis owner. Do not edit, generate, delete, rename, or move project files unless the user separately requests implementation after the report.

## Ownership

Own:

- File and component relationship mapping
- Import, export, include, render, and reference tracing
- Function call and shared utility usage tracing
- DOM selector, custom element, event, and state relationship tracing
- Data flow and lifecycle mapping
- Shopify theme topology and storefront surface mapping
- Pre-change blast-radius prediction
- Risk tier, confidence, test scope, and rollback-point definition
- Architecture findings that materially change the proposed modification
- Implementation handoff constraints

Do not own:

- Business-code implementation or refactoring
- Visual design, layout, motion, copy, SEO, CRO, or product strategy
- General linting, formatting, or style-only code review
- Performance optimization; report performance exposure only when it is a consequence of the proposed change
- Skill routing or multi-agent orchestration
- Claims unsupported by repository evidence

## Relationship With Other Skills

`ai-workflow-engineer` is upstream only when orchestration is genuinely required. It may select this Skill as a preflight stage. After selection, this Skill owns impact analysis and stops at the implementation handoff.

Typical sequence:

1. `ai-workflow-engineer` selects the minimum owners when the request requires routing.
2. `code-impact-graph` maps dependencies and predicts change impact.
3. The relevant implementation Skill receives the bounded handoff.
4. A test or review stage validates only the identified surfaces.

For direct requests such as "分析修改 cart drawer 会影响哪里", activate this Skill directly without adding orchestration.

For Shopify implementation, hand off to `shopify-frontend-code-writer`. Do not duplicate its code-writing work.

## Required Input

Accept the available subset of:

- Repository or project path
- Proposed change, target behavior, or target symbol
- Entry page, route, template, section, component, or asset
- Known constraints such as desktop-only, theme-editor compatibility, or no schema changes
- Relevant failure symptoms when diagnosing an existing regression

If the target is ambiguous, inspect the repository first. Ask only when multiple materially different targets remain.

## Analysis Workflow

### 1. Establish the change boundary

Restate the proposed change in one sentence. Separate intended behavior from assumed implementation. Do not let a guessed file become the scope.

### 2. Discover repository topology

Use repository-native tools first. Prefer `rg --files`, `rg`, language-aware search, package manifests, build configuration, and version-control history when relevant. Ignore generated output, dependencies, and vendor directories unless runtime behavior requires them.

For a large Shopify theme, begin with layout, templates, section groups, sections, snippets, assets, config, and locales. Read [references/shopify-theme-map.md](references/shopify-theme-map.md) for Shopify-specific traversal.

### 3. Build a task-scoped graph

Use nodes only when relevant to the requested change. Node types may include:

- File, module, symbol, custom element, selector, event, state store
- Layout, template, section group, section, block, snippet, asset
- Setting, metafield, translation key, route, API endpoint, storage key

Record directed edges with evidence:

- imports / imported-by
- renders / rendered-by
- calls / called-by
- queries-selector / matched-by
- dispatches-event / listens-to-event
- reads-state / writes-state
- configured-by / translated-by
- loaded-by / instantiated-on

Read [references/dependency-patterns.md](references/dependency-patterns.md) for static, DOM, event, and runtime relationships. Do not present an exhaustive repository graph when a bounded subgraph answers the request.

### 4. Trace propagation

Trace both directions:

- Upstream: what loads, configures, or calls the target?
- Downstream: what the target renders, mutates, invokes, or signals?

Include lifecycle boundaries such as initial page load, dynamic section rendering, Shopify Theme Editor events, cart section rendering, browser history, resize, and asynchronous initialization when supported by evidence.

### 5. Classify evidence and confidence

Label each relationship:

- Confirmed: direct source evidence exists.
- Probable: convention or runtime indirection strongly indicates the relationship.
- Possible: plausible but not established; requires runtime verification.

Never convert a filename resemblance or naming convention into a confirmed dependency.

### 6. Score impact and risk

Assess reach, coupling, lifecycle sensitivity, statefulness, reversibility, and testability. Use [references/risk-analysis.md](references/risk-analysis.md).

- Critical: can break global rendering, checkout-adjacent behavior, cart state, theme lifecycle, or many storefront surfaces with weak isolation.
- High: affects shared runtime behavior or multiple important templates/components.
- Medium: affects a bounded feature with one or more indirect consumers.
- Low: isolated consumer, content, style, or configuration with straightforward verification.

Risk is not file importance alone. State the failure mode and propagation path.

### 7. Review architecture only where relevant

Report duplicate logic, dead or unused candidates, circular dependencies, naming ambiguity, or ownership problems only when they alter the safety or scope of the proposed change. Do not turn the report into a general code-quality review.

### 8. Define verification and rollback

Map every high or critical impact to at least one test scenario. Include affected pages, viewports, interactions, Theme Editor behavior, state transitions, and reduced/slow-network cases only where relevant.

Define a concrete rollback boundary: files, commit, feature flag, setting, or independently reversible step. Do not claim that Git alone is an adequate rollback plan when data or configuration changes are involved.

### 9. Stop and hand off

Return the report. Do not implement the change. Identify the implementation owner and give it only the constraints and affected surfaces it needs.

## Required Output Format

Use this structure unless the user requests another format:

```markdown
## Change Intent
[One-sentence proposed change and analysis boundary]

## Executive Risk
Risk: Critical | High | Medium | Low
Confidence: High | Medium | Low
Reason: [Primary propagation path and failure mode]

## Relationship Map
[Compact tree, edge list, or Mermaid graph]

## Impact Matrix
| Risk | File / Symbol / Surface | Relationship | Evidence | Predicted Failure |

## Data and Lifecycle Flow
[Only flows relevant to the change]

## Architecture Findings
[Only findings that affect this change, or "None"]

## Safe Change Boundary
- Must change
- May change
- Must not change without separate analysis

## Verification Plan
| Priority | Page / Scenario | Action | Expected Result |

## Rollback Points
[Ordered reversible boundaries]

## Implementation Handoff
Owner: [Skill or engineering role]
Constraints: [Required invariants]
Open unknowns: [Runtime checks still needed]
```

For each matrix row, cite the concrete file and, when practical, symbol, selector, event, setting, or line. Keep unknowns explicit.

## Shopify Requirements

When analyzing Shopify themes:

- Trace `layout/theme.liquid` and the active JSON template or Liquid template.
- Trace section groups, sections, blocks, snippets, and assets in render order.
- Distinguish schema settings from runtime data and merchant content.
- Trace cart requests and bundled section rendering across request, response, DOM replacement, and component reinitialization.
- Check Theme Editor load, section load/unload, block select/deselect, and reorder implications where relevant.
- Account for app blocks, app embeds, metafields, localization, and market-specific behavior when evidence exists.
- Treat selector contracts and custom events as dependencies even without imports.
- Do not assume an asset is unused solely because no static import exists.

Read [references/architecture-analysis.md](references/architecture-analysis.md) for the general method and [references/shopify-theme-map.md](references/shopify-theme-map.md) for the theme traversal model.

## Resource Routing

- Read `references/architecture-analysis.md` for repository-scale mapping and graph boundaries.
- Read `references/shopify-theme-map.md` for any Shopify theme analysis.
- Read `references/dependency-patterns.md` when JavaScript, DOM, events, dynamic loading, or indirect references are involved.
- Read `references/risk-analysis.md` before assigning the final risk level.
- Read the closest file in `examples/` when formatting a similar report.
- Run through `checklists/code-impact-review.md` before finalizing every analysis.

## Stop Conditions

Stop when the requested change has:

- A bounded relationship graph
- Evidence and confidence labels
- Ranked affected surfaces and failure modes
- A safe change boundary
- Verification scenarios and rollback points
- A named implementation owner

Do not continue into implementation unless the user begins a separate implementation request.
