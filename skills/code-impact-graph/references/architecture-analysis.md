# Architecture Analysis

## Goal

Build the smallest graph that can explain how a proposed change propagates. Optimize for decision quality, not graph size.

## Discovery Order

1. Identify repository roots, package boundaries, framework entry points, and build configuration.
2. Locate the requested behavior by user-facing text, selectors, symbols, routes, settings, and event names.
3. Find direct definitions and consumers.
4. Trace one level upstream and downstream, then expand only when a shared dependency or lifecycle boundary appears.
5. Compare repository history when ownership or previous regressions matter.

## Node Model

Use stable identifiers:

| Node | Identifier example |
| --- | --- |
| File | `assets/cart-drawer.js` |
| Symbol | `CartDrawer.renderContents` |
| Selector | `[data-cart-drawer]` |
| Event | `cart:updated` |
| State | `localStorage.cartNote` |
| Surface | `templates/product.json` |
| Config | `settings.cart_type` |

Avoid creating separate nodes for incidental local variables unless they control an important branch.

## Edge Evidence

For every consequential edge, capture:

- Source and target
- Relationship type
- Static evidence location
- Runtime condition, if any
- Confidence level

Example:

`product-form.js::submitHandler` -> `cart-drawer.js::renderContents`

- Type: calls through discovered custom element
- Evidence: selector lookup plus method invocation
- Condition: drawer element exists and cart type is drawer
- Confidence: Confirmed

## Graph Expansion Rules

Expand when:

- A target is shared across routes or templates.
- An event has multiple listeners.
- A selector is reused by unrelated components.
- A shared state or API response changes shape.
- A dynamic import, registry, or template setting controls loading.
- DOM replacement requires reinitialization.

Stop expanding when:

- The edge cannot affect the requested behavior.
- A dependency is isolated behind a stable interface that is not changing.
- Additional consumers repeat an already established risk class.
- Only generated or vendored internals remain.

## Data Flow

Represent data flow as:

`source -> transform -> state/DOM/API -> observer/consumer -> user-visible effect`

Capture shape changes, nullability, timing, ownership, and mutation. Distinguish synchronous calls from asynchronous callbacks and browser events.

## Architecture Findings

Only report findings connected to the proposed change:

- Duplicate logic that can diverge after the change
- Circular dependency that affects initialization or build order
- Dead-code candidate that could be mistakenly edited or deleted
- Naming collision that obscures the true owner
- Shared module with an unstable or implicit contract
- Cross-layer access that makes rollback difficult

State evidence and consequence. Avoid generic recommendations such as "improve modularity."

## Large Repository Strategy

- Map package or theme boundaries before individual files.
- Sample repeated consumers after proving they share the same contract.
- Use counts for broad reach, but name critical consumers explicitly.
- Separate direct impact from transitive and operational impact.
- Record excluded directories and why they were excluded.
