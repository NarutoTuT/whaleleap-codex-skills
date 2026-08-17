# Motion Principles

## Purpose First

Use animation only when it improves one of these outcomes:

- Brand confidence: the site feels precise, premium, and alive.
- Attention guidance: the user notices the next important action or content.
- Comprehension: motion explains hierarchy, state change, or relationship.
- Conversion: interaction reduces hesitation or clarifies the buying path.
- Feedback: the interface acknowledges input immediately.
- Continuity: transitions prevent jarring context changes.

If none applies, remove the animation.

## Commercial Website Restraint

For ecommerce and Shopify stores, motion should support browsing and buying. Avoid motion that delays product inspection, hides important information, or makes the page feel like a demo.

Default posture:

- Fast entrance.
- Light distance.
- Few animated properties.
- Short stagger.
- No surprise movement near CTAs or price.
- No animation that competes with product imagery.

## Timing

Recommended ranges:

- Micro feedback: 80-160ms.
- Hover/menu/tab: 140-220ms.
- Section reveal: 220-420ms.
- Hero entrance: 450-900ms, only if above the fold and brand-critical.
- Page transition: 180-360ms.
- Stagger gap: 30-70ms.
- Maximum total stagger for commercial sections: 150-250ms.

Avoid long stagger chains for product cards, filters, cart items, links, and repeated content.

## Easing

Use calm, confident easing:

- Standard UI: `cubic-bezier(0.22, 1, 0.36, 1)`.
- Quick feedback: `cubic-bezier(0.16, 1, 0.3, 1)`.
- Exit: shorter and slightly sharper than enter.

Avoid bounce, elastic, and overshoot unless the brand is explicitly playful.

## Motion Hierarchy

Assign different motion levels:

- Level 0: no animation; content appears immediately.
- Level 1: subtle opacity/transform for standard reveals.
- Level 2: sequenced reveal for high-value hero or product storytelling.
- Level 3: scroll-linked or 3D motion only for signature moments.

Most pages should use Level 0-1 for most sections and reserve Level 2-3 for one or two moments.

## Repetition Control

Avoid applying the same reveal to every section. Use:

- Hero: distinctive entrance.
- Content sections: simple grouped reveal.
- Product grids: minimal or no stagger.
- Footer/CTA: direct reveal or no animation.
- Repeated cards: animate container, not every child.

## Interaction Feedback

Buttons, links, cards, filters, and menu items should respond quickly. Good feedback is small:

- Opacity shift.
- Color shift.
- 1-3px translate.
- 0.98-1.02 scale.
- Underline or indicator movement.

Do not use feedback that moves layout, changes hit area, or causes text reflow.
