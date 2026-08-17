# Example: Shared Utility Refactor Analysis

## Request

"合并两个重复的 money formatting 函数。"

## Change Intent

Consolidate duplicate currency-formatting logic without changing output across locale, cart, product, and predictive-search consumers.

## Executive Risk

Risk: High  
Confidence: Medium  
Reason: Similar implementations may have different input contracts, currency assumptions, and HTML escaping behavior.

## Relationship Map

```text
formatMoney A <- product-card.js, quick-add.js
formatMoney B <- cart.js, predictive-search.js
  -> theme money format setting
  -> locale/currency output
  -> textContent or innerHTML sinks
```

## Analysis Findings

- Prove equivalence for null values, integer/minor units, decimal separators, currency code display, and HTML placeholders.
- Identify whether consumers expect text or markup.
- Check whether either function closes over a global theme setting.
- Treat identical names as insufficient evidence of identical contracts.

## Impact Matrix

| Risk | Surface | Relationship | Predicted Failure |
| --- | --- | --- | --- |
| High | Cart totals | Shared commerce display | Incorrect currency or stale subtotal display |
| High | Product price | Reused formatter | Wrong decimal/minor-unit handling |
| Medium | Predictive search | Async HTML consumer | Escaping or format mismatch |
| Low | Tests/stories | Expected output snapshots | Snapshot updates only if behavior is intentionally changed |

## Safe Change Boundary

- Must change: one implementation owner and explicit input/output contract.
- May change: imports and focused tests.
- Must not change without separate approval: currency semantics or HTML output behavior.

## Verification Plan

Test zero, discounted, decimal, multi-currency, and locale-specific prices in each direct consumer before deleting either implementation.

## Rollback Points

1. Add characterization tests for both current functions.
2. Introduce the shared implementation without deleting old exports.
3. Migrate consumers in bounded groups.
4. Remove old exports only after parity verification.

## Implementation Handoff

Owner: relevant frontend implementation Skill or repository engineer  
Constraints: Preserve existing output contracts until a separately approved behavior change.
