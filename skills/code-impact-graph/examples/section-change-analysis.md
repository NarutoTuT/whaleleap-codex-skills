# Example: Shopify Section Change Analysis

## Request

"给 product showcase section 增加新的 block type，会影响哪里？"

## Change Intent

Add one merchant-configurable block type while preserving existing saved section data and frontend initialization.

## Executive Risk

Risk: Medium  
Confidence: High  
Reason: The change is section-scoped but crosses schema, Liquid branches, block attributes, JavaScript selectors, and Theme Editor lifecycle.

## Relationship Map

```text
templates/index.json
  -> sections/product-showcase.liquid
      -> schema.blocks[].type
      -> block rendering case
      -> snippets/product-showcase-card.liquid
      -> [data-product-showcase] selector
          -> assets/product-showcase.js
          -> shopify:block:select
```

## Impact Matrix

| Risk | File / Symbol / Surface | Relationship | Evidence | Predicted Failure |
| --- | --- | --- | --- | --- |
| High | `sections/product-showcase.liquid` | Schema and renderer owner | Direct definition | New blocks save but do not render, or invalid schema blocks deployment |
| Medium | `assets/product-showcase.js` | Selector/lifecycle consumer | Queries section and block nodes | Inserted block is not initialized in Theme Editor |
| Medium | `snippets/product-showcase-card.liquid` | Shared child contract | Render parameters | Missing data or duplicate IDs |
| Low | `templates/index.json` | Existing instance data | Section composition | Existing blocks should remain compatible |

## Safe Change Boundary

- Must change: schema block declaration and matching render branch.
- May change: child snippet parameters and scoped initialization.
- Must not change without migration analysis: existing block type names and setting IDs.

## Verification Plan

| Priority | Page / Scenario | Action | Expected Result |
| --- | --- | --- | --- |
| P0 | Theme Editor | Add, remove, and reorder new block | Correct rendering with no console errors |
| P1 | Existing homepage | Load current saved blocks | No content or setting regression |
| P1 | Mobile and desktop | Interact with mixed block types | Stable layout and one initialized instance |

## Implementation Handoff

Owner: `shopify-frontend-code-writer`  
Constraints: Preserve all existing type and setting IDs; include `block.shopify_attributes`; support section and block editor events.
