# Example: Shopify Cart Drawer Impact Analysis

## Request

"修改 cart drawer，让加购后推荐商品重新加载。"

## Change Intent

Refresh cart recommendations after successful add-to-cart without changing the cart response contract or drawer focus behavior.

## Executive Risk

Risk: High  
Confidence: Medium  
Reason: The change crosses product form submission, bundled section rendering, DOM replacement, recommendation initialization, and drawer accessibility state.

## Relationship Map

```text
product-form.js::submitHandler
  -> /cart/add.js
  -> sections response
  -> cart-drawer.js::renderContents
      -> #CartDrawer DOM replacement
      -> cart-recommendations custom element reconnected
      -> focus trap and live region restoration
```

## Impact Matrix

| Risk | File / Symbol / Surface | Relationship | Evidence | Predicted Failure |
| --- | --- | --- | --- | --- |
| High | `assets/cart-drawer.js::renderContents` | DOM owner | Direct replacement method | Recommendations remain stale or drawer state breaks |
| High | `assets/product-form.js::submitHandler` | Request initiator | Calls cart API and passes sections | Missing recommendation section in response |
| Medium | `sections/cart-drawer.liquid` | Rendered contract | Owns replacement target | Selector mismatch causes stale HTML |
| Medium | `assets/cart-recommendations.js` | Reinitialization consumer | Custom element lifecycle | Duplicate request or no reload |
| Low | `snippets/card-product.liquid` | Recommendation child renderer | Indirect presentation consumer | Card markup regression only |

## Safe Change Boundary

- Must change: recommendation refresh trigger and verified initialization path.
- May change: bundled section ID list if the endpoint supports it.
- Must not change without separate analysis: cart JSON shape, global cart events, drawer focus/scroll-lock contract.

## Verification Plan

| Priority | Page / Scenario | Action | Expected Result |
| --- | --- | --- | --- |
| P0 | PDP, empty cart | Add first item | Drawer opens, item and recommendations update, focus is valid |
| P0 | PDP, populated cart | Rapidly add twice | Final cart and recommendations match server state |
| P1 | Theme Editor preview | Reload/reselect relevant section | One recommendation request and no duplicate listeners |
| P1 | Mobile and desktop | Add, close, reopen drawer | Scroll lock and focus restore correctly |

## Rollback Points

1. Preserve the current request and section-response contract.
2. Add recommendation refresh behind one isolated call site.
3. Revert that call site if lifecycle QA fails.

## Implementation Handoff

Owner: `shopify-frontend-code-writer`  
Constraints: Preserve cart events, bundled section keys, focus trap, live region, and Theme Editor reinitialization.  
Open unknowns: Confirm whether recommendations are returned as a bundled section or fetched independently.
