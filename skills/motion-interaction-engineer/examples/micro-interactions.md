# Micro Interactions Example

User request:

```text
Add subtle micro-interactions to filters, cards, and buttons.
```

Expected output:

```text
Motion objective:
Make controls feel responsive without slowing browsing.

Where animation belongs:
Button press feedback, filter active state, card hover media, menu indicator.

Where animation should be avoided:
Large product grid layout movement, delayed filter results, disabled controls.

Timeline:
Button hover: 140ms color/opacity.
Button press: 80ms scale 0.98.
Filter active indicator: 160ms transform/opacity.
Card hover: 180ms media scale 1 to 1.025.

Technology choice:
CSS transitions only.

Responsive behavior:
Disable hover-only effects on touch. Preserve tap feedback.

Reduced motion behavior:
No scale or translate. Keep color/opacity state changes.

Performance risks:
Avoid box-shadow animation across large product grids.

Implementation handoff:
Owner depends on stack: shopify-frontend-code-writer for Shopify, ui-styling for Tailwind/shadcn.
```
