# Example: PDP And Cart QA

## Scope

Product media, variant state, product form, sticky add-to-cart, and cart drawer.

## Primary Scenarios

1. Select available variant and verify media, price, URL, inventory, and button state.
2. Select unavailable variant and verify disabled purchase state.
3. Add one item and verify loading, success, drawer content, focus, and totals.
4. Rapidly click add-to-cart and verify duplicate prevention.
5. Change quantity in the drawer and verify final server state.
6. Refresh and use browser history to verify state restoration.
7. Repeat primary path at desktop and mobile viewports.

## Finding

### P0 Add-to-cart succeeds but cart drawer remains empty

Surface: Product form to cart drawer  
Environment: Unpublished theme preview, mobile `390 x 844`  
Preconditions: Empty cart, available variant  
Steps to reproduce: Open PDP, select variant, press Add to cart once  
Expected: Drawer opens with one matching line and updated cart count  
Actual: Request returns `200`, drawer opens with empty-state markup, cart count remains zero  
Evidence: Successful `/cart/add.js`; subsequent section replacement uses an unmatched target ID  
Frequency: 5/5  
User/business impact: Purchase path appears broken despite successful cart mutation  
Likely affected surface: Cart bundled-section response mapping and drawer DOM target  
Implementation owner: `shopify-frontend-code-writer`  
Confidence: High

## Release Gate

`NEEDS FIX`: P0 commerce-state mismatch blocks release.
