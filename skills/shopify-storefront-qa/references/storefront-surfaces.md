# Storefront Surfaces

Load only the sections relevant to the requested QA scope.

## Global Shell

- Header visibility at top, scroll down, and scroll up
- Desktop dropdown and mega-menu continuity
- Mobile menu and submenu state when in scope
- Search open/close, focus, escape, overlay, and scroll lock
- Announcement bar, locale/currency selector, account and cart links
- Footer links, accordion behavior, locale controls, and legal links
- Overlay stacking and simultaneous-open prevention

## Homepage

- Hero content and primary CTA availability
- Deferred sections and hidden-until-reveal content
- Swipers, tabs, filters, accordions, videos, recommendations
- Empty/missing merchant settings
- Progressive loading and layout stability
- Final CTA and footer transition

## Product Detail Page

- Gallery, thumbnail, swipe, zoom, media type changes
- Variant-to-media, price, inventory, URL, SKU, and button synchronization
- Available, unavailable, sold-out, and missing-selection states
- Quantity control and selling-plan behavior when present
- Add-to-cart loading, success, error, rapid repeat, and duplicate prevention
- Sticky add-to-cart visibility and state parity
- Accordions/tabs, pickup, shipping, reviews, recommendations
- Cart drawer or notification handoff, focus, live region, and scroll lock

## Collection

- Product grid, pagination or infinite load
- Filters, sorting, removal chips, clear-all, and URL/history sync
- Zero-result and no-product states
- Product-card variant, quick-add, price, badge, and image behavior
- Mobile filter drawer and desktop sidebar parity

## Search

- Drawer open/close and focus ownership
- Predictive search loading, results, empty, error, keyboard and escape
- Submit behavior and query preservation
- Search results with products, no results, special characters, and long queries
- Product-card layout and result count
- Back/forward and query URL restoration

## Cart And Cart Drawer

- Empty and populated state
- Add, quantity increase/decrease, remove, note, discount display
- Rapid quantity changes and stale-response prevention
- Error recovery and unavailable inventory
- Bundled section rendering and DOM replacement
- Drawer open/close, focus trap, escape, outside click, scroll lock
- Totals, currency, line properties, selling plans, and checkout CTA

Do not complete checkout without explicit authorization.

## Forms And Popups

- Required, invalid, success, server-error, duplicate-submit states
- Keyboard order, labels, live feedback, and focus placement
- Popup trigger frequency, close controls, persistence, and overlap
- Do not submit consequential contact, customer, or subscription data unless authorized.

## Third-Party And App Content

- App block presence and fallback
- Delayed initialization
- Layout shift and stacking conflicts
- Failure isolation when a third-party request fails
- Do not diagnose third-party internals without evidence or access.
