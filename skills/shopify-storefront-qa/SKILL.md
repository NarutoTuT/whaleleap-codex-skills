---
name: shopify-storefront-qa
description: "Run evidence-based functional, visual, responsive, and runtime regression QA on Shopify storefronts and theme previews. Use when the user asks to test a completed Shopify homepage, PDP, collection, search, navigation, cart drawer, filters, tabs, forms, responsive layouts, Theme Editor lifecycle, or post-change/pre-release storefront behavior in a real browser. Report reproducible P0/P1/P2 findings, coverage, untested risks, and a release gate. Do not use for implementing fixes, visual redesign, motion strategy, SEO audits, performance optimization, store launch configuration, or theme push/publish operations."
---

# Shopify Storefront QA

## Purpose

Validate a completed or changed Shopify storefront in a real browser before release or acceptance. Test observable behavior across required devices and state transitions, collect evidence, report reproducible defects, and issue a qualified release gate.

Operate read-only against code and storefront configuration. Do not modify project files, Shopify settings, products, navigation, themes, or content. Do not push or publish a theme.

## Own

- Functional regression testing of storefront interactions
- Responsive visual QA across desktop, tablet, and mobile
- Browser console and relevant network-failure triage
- Navigation, search, collection, PDP, cart, drawer, filter, tab, slider, modal, and form acceptance testing
- Refresh, resize, back/forward, rapid-input, loading, empty, error, and state-restoration checks
- Shopify Theme Editor dynamic section and block lifecycle checks when access is available
- Post-change smoke tests and pre-release go/no-go evidence
- Reproduction steps, severity, confidence, likely affected surface, and implementation handoff
- Explicit coverage and untested-risk accounting

## Do Not Own

- Liquid, CSS, JavaScript, schema, configuration, or content changes
- Visual redesign, CRO layout decisions, or brand direction
- Motion strategy or motion-quality direction
- SEO, GEO, schema, Search Console, or Merchant Center audits
- Dedicated accessibility conformance or performance optimization audits
- Store-level launch readiness such as payments, tax, shipping, markets, domains, or policies
- Theme pull, push, publish, or release execution
- Skill routing or generic project planning

Basic keyboard, focus, ARIA-state, reduced-motion, loading, and rendering checks are part of functional QA. Do not represent them as a complete WCAG or performance audit.

## Collaboration Boundaries

- Pre-change dependency prediction: `code-impact-graph`
- Shopify implementation fixes: `shopify-frontend-code-writer`
- Shopify visual/CRO redesign: `shopify-agency-design-system`
- Motion-specific strategy and quality audit: `motion-interaction-engineer`
- SEO requirements: `shopify-seo-growth`
- Theme pull/push/publish: `shopify-theme-release-agent`
- Multi-domain routing: `ai-workflow-engineer`

This Skill reports defects and stops. It does not silently fix them.

## Required Inputs

Resolve before testing:

- Exact storefront or preview URL
- Store and theme identity when more than one target exists
- Scope: full storefront, page type, component, change set, or regression surface
- Required devices, browsers, locales, markets, customer state, and test data
- Whether Theme Editor access is in scope
- Whether cart mutations, form submissions, or test orders are allowed

Infer low-risk defaults only when they do not change remote state. If the target store or theme is ambiguous, stop and ask.

Never place a real order, submit a consequential customer form, alter admin data, or publish content without explicit authorization. Adding/removing disposable cart lines is allowed only when the user has placed cart testing in scope.

## Default Viewports

Use project-specific breakpoints when known. Otherwise use:

- Desktop: `1440 x 900`
- Tablet: `768 x 1024`
- Mobile: `390 x 844`

Add one intermediate width near a relevant breakpoint when a defect is likely to be breakpoint-specific.

## QA Workflow

### 1. Lock the target

Record URL, store, theme name/ID if visible, page or template, timestamp, authentication state, locale/market, and viewport. Distinguish local dev, theme preview, unpublished theme, and live storefront.

Do not claim a live result from a preview URL or a preview result from the live storefront.

### 2. Establish the test basis

Identify the user request, changed files or feature, critical commerce path, expected behavior, and known constraints. Inspect relevant code read-only only when needed to understand expected behavior or identify a likely owner.

Read [references/qa-method.md](references/qa-method.md) for evidence and coverage rules.

### 3. Run a baseline smoke test

Before detailed checks, verify:

- Page loads without a fatal error or blank critical region
- Header/navigation and primary content render
- Primary commerce action is reachable
- No obvious layout overlap or horizontal overflow
- Console has no new fatal JavaScript exception
- Key requests do not fail in a way that blocks the tested path

Stop detailed testing and report `BLOCKED` when the baseline cannot proceed.

### 4. Test the scoped surfaces

Use the smallest matrix that covers the requested risk. Read [references/storefront-surfaces.md](references/storefront-surfaces.md) for page and interaction coverage.

For each important interaction, test applicable states:

- Initial, loading, success, empty, error, disabled, and unavailable
- Mouse/pointer, keyboard, touch, drag/swipe, or rapid repeat
- Refresh, resize, back/forward, and state restoration
- Guest/customer, cart empty/populated, variant available/unavailable, or search results/no results

Do not execute every possible state when it does not affect the requested surface. State what was excluded.

### 5. Run responsive visual QA

At each required viewport, check layout containment, text fit, hierarchy, media cropping, sticky/fixed elements, overlays, safe-area behavior, tap targets, focus visibility, and interaction reachability.

Read [references/responsive-visual-qa.md](references/responsive-visual-qa.md).

### 6. Inspect runtime evidence

Capture relevant console errors, failed network requests, response status, failing resource or endpoint, and the user action that produced them. Separate pre-existing third-party noise from reproducible feature failures.

Read [references/console-network-triage.md](references/console-network-triage.md).

### 7. Test Theme Editor lifecycle when relevant

For configurable sections, blocks, app blocks, and dynamically replaced HTML, test load, unload, reorder, block select/deselect, settings update, and duplicate initialization where access permits.

Read [references/theme-editor-lifecycle.md](references/theme-editor-lifecycle.md).

### 8. Test reduced motion functionally

When motion or hidden-until-reveal content exists, emulate `prefers-reduced-motion: reduce` and verify that content remains visible, interactions work, delays do not block use, and disabled transforms do not alter layout.

Delegate aesthetic motion judgment to `motion-interaction-engineer`.

### 9. Classify findings

- `P0`: blocks purchase, navigation, core content, accessibility of a critical path, or causes fatal/global runtime failure.
- `P1`: materially degrades a primary flow, creates wrong/stale state, major responsive failure, or likely user abandonment.
- `P2`: localized polish, consistency, or low-impact edge case that does not block the primary flow.

Do not inflate severity. Tie every priority to user and business impact.

### 10. Issue a release gate

- `PASS`: required scope was tested; no unresolved P0/P1 findings; untested items are non-critical and explicit.
- `PASS WITH RISKS`: no P0; accepted P1 or meaningful untested risk remains and is explicitly documented.
- `NEEDS FIX`: at least one unresolved P0/P1 defect prevents acceptance.
- `BLOCKED`: required evidence could not be collected because of access, environment, data, or baseline failure.

Never issue `PASS` when critical scope is `NOT TESTED`.

## Required Finding Format

```markdown
### [P0|P1|P2] Short finding title

Surface:
Environment:
Preconditions:
Steps to reproduce:
Expected:
Actual:
Evidence:
Frequency:
User/business impact:
Likely affected files or component surface:
Implementation owner:
Confidence: High | Medium | Low
```

Use exact selectors, event names, request paths, screenshots, console messages, or file references when available. Mark suspected ownership as inference.

## Required Report Format

```markdown
## QA Result
PASS | PASS WITH RISKS | NEEDS FIX | BLOCKED

## Target
Store/theme/URL, timestamp, environment, test data

## Coverage
| Surface | Desktop | Tablet | Mobile | Result | Evidence |

## Critical Issues
P0/P1 findings only

## Additional Findings
P2 findings

## Runtime Evidence
Console and network findings

## Untested / Blocked
Explicit gaps and reason

## Release Gate
Decision, rationale, required fixes or accepted risks

## Implementation Handoff
Owner, affected surfaces, regression scenarios
```

If no critical issues exist, state `None found in tested scope`. Do not imply that untested scope passed.

## Tool Strategy

- Prefer a browser-control Skill for real page interaction, screenshots, responsive emulation, console, and network inspection.
- Use the user's existing Chrome session only when login, preview cookies, or extensions are required.
- Use filesystem tools read-only to inspect related theme code or changed files.
- Use Shopify connectors or CLI read-only commands only when exact theme/store identity or remote evidence is required.
- Do not mutate remote systems merely to improve test coverage.

System permissions, browser safety rules, and connector rules override this Skill.

## Resource Routing

- Read `references/qa-method.md` for every full QA run.
- Read `references/storefront-surfaces.md` for the relevant page types only.
- Read `references/responsive-visual-qa.md` for multi-viewport testing.
- Read `references/console-network-triage.md` when runtime errors or failed requests appear.
- Read `references/theme-editor-lifecycle.md` when sections, blocks, app embeds, or dynamic HTML are involved.
- Read the closest file in `examples/` when formatting a similar report.
- Complete `checklists/storefront-qa-checklist.md` before issuing the release gate.

## Stop Conditions

Stop when:

- The required scope has evidence-backed results and an explicit release gate.
- A baseline failure or missing access blocks meaningful testing.
- Testing would require an unauthorized order, submission, admin mutation, push, or publish.
- The task moves into code fixes, design, SEO, motion strategy, performance optimization, launch configuration, or release execution.

Name the correct owner and hand off. Do not cross the boundary.
