# Shopify Motion Patterns

## Homepage Hero

Use motion to establish brand quality without delaying comprehension.

Good patterns:

- Media loads visible or fades in quickly.
- H1 enters with small y distance.
- CTA appears early.
- Secondary proof enters after main content.

Avoid:

- Hiding headline until video or image animation finishes.
- Large text fly-ins.
- Long stagger on every word.
- Scroll hijacking on first viewport.

## Product Detail Page

Use motion to support decision-making:

- Gallery transitions should be fast and stable.
- Variant changes should provide immediate feedback.
- Sticky ATC changes should be smooth but not distracting.
- Accordion transitions should preserve reading flow.
- Reviews/specs can use simple grouped reveal.

Avoid:

- Animating price, add-to-cart, or error states in ways that delay action.
- Re-triggering PDP reveals after variant updates.
- Parallax that makes product imagery harder to inspect.

## Collection Page

Use motion lightly:

- Filter state changes: quick fade/opacity or skeleton.
- Product grid update: avoid blank states and race conditions.
- Product card hover: image swap, elevation, or CTA reveal.

Avoid:

- Staggering dozens of products.
- Animating layout in ways that cause cumulative layout shift.
- Hiding filtered results behind long transitions.

## Cart Drawer

Cart motion must be responsive and reliable:

- Drawer enter/exit: 180-280ms.
- Item add feedback: clear but brief.
- Quantity change: no delayed price updates.
- Errors: visible immediately.

Reduced motion should keep drawer open/close functional without translate effects.

## Mega Menu

Use restrained menu motion:

- Opacity 0 to 1.
- TranslateY -4px to 0.
- Optional group reveal with 30-50ms stagger.
- Close slightly faster than open.

Avoid hover gaps, delayed open, and per-link complex stagger.

## Popup

Popup motion should not feel intrusive:

- Overlay fade.
- Dialog scale 0.98 to 1 or y 8 to 0.
- Clear close behavior.
- Do not animate in repeatedly during one session.

## Product Recommendations

Use motion to distinguish recommendations from main product content:

- Simple grouped reveal.
- Optional card hover feedback.
- No long card-by-card stagger.

## Campaign Landing Page

Campaign pages may use a stronger motion system:

- One signature hero or product storytelling moment.
- Short supporting reveals.
- CTA remains accessible.
- Motion rhythm should not delay the campaign offer.
