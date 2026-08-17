# PDP Accessibility Audit Example

## Scope

Product page with gallery, variants, quantity, subscription option, add-to-cart feedback and cart drawer.

## Required States

- available and unavailable variants
- validation error
- price and inventory update
- add-to-cart success
- cart drawer open and close
- keyboard-only operation
- zoom/reflow and mobile touch

## Example Finding

`P0`: variant controls expose no programmatic selected state, preventing some assistive-technology users from choosing a purchasable option.

The handoff must include rendered selectors, actual accessibility-tree evidence, expected state announcement, likely theme/app owner, and a complete keyboard plus screen-reader retest. Do not prescribe Liquid code from this Skill.
