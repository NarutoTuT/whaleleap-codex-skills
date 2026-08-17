# Accessibility Audit

## Test Layers

1. Automated scan for detectable rules.
2. Keyboard-only navigation and operation.
3. Focus order, visibility, restoration and obstruction.
4. Zoom, reflow, orientation and text-spacing checks.
5. Pointer and touch alternatives, target size and dragging alternatives.
6. Accessibility tree and accessible-name inspection.
7. Screen-reader testing when tools and scope allow.
8. Content, form, error and status-message review.

## Shopify Critical Paths

- Header, mega menu, search and predictive search
- Collection filters, sorting and pagination
- Product gallery, media, variants, quantity and selling plans
- Add-to-cart feedback, cart drawer and cart page
- Discounts, errors, inventory and unavailable states
- Customer account, login and authentication handoff
- Checkout reachability and platform-owned transition
- Popups, consent, chat and app-injected UI

## Evidence Rules

- Name the exact browser, viewport, input method and assistive technology.
- Map a WCAG success criterion only after reproducing the barrier.
- Distinguish missing accessible name from poor visible copy or visual preference.
- Record dynamic state before and after interaction.
- Test focus after dialog close, cart update, variant change and section replacement.
- Verify that hidden content is absent from both interaction and accessibility trees when appropriate.

## Common High-Risk Patterns

- Clickable non-interactive elements without keyboard support
- Focus trapped, lost, hidden under sticky UI or moved unexpectedly
- Drawer/dialog without focus containment or restoration
- Variant state conveyed only visually
- Error message not associated with its field or announced
- Product media without meaningful alternative
- Carousel or autoplay without control
- Touch-only drag interaction
- Authentication requiring inaccessible cognitive tests
- Reduced-motion mode leaving content hidden or interactions broken

## Conformance Limits

Do not claim site-wide WCAG conformance unless complete pages, responsive variations, required states, third-party content and conformance requirements were evaluated. Report a scoped audit result instead.
