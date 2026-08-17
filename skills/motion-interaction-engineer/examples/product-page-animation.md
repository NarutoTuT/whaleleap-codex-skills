# Product Page Animation Example

User request:

```text
Plan better interaction motion for a Shopify PDP.
```

Expected output:

```text
Motion objective:
Make product exploration feel responsive while keeping purchase actions stable.

Where animation belongs:
Gallery thumbnail changes, variant selection feedback, accordion open/close, sticky add-to-cart entrance, review/spec grouped reveal.

Where animation should be avoided:
Price changes, ATC enabled/disabled state, inventory warning, checkout path.

Timeline:
Variant press: 90ms active feedback.
Gallery change: 180ms crossfade.
Accordion: 180-220ms height/opacity using accessible state.
Sticky ATC: 180ms y 8 to 0 when crossing purchase boundary.

Technology choice:
CSS for variant/accordion/sticky feedback. Swiper hooks if gallery uses Swiper. GSAP not required unless existing PDP has a complex product story.

Responsive behavior:
Mobile uses shorter transitions and no parallax.

Reduced motion behavior:
Disable transforms. Keep state changes instant.

Performance risks:
Avoid re-triggering reveal after variant media updates.

Implementation handoff:
Owner: shopify-frontend-code-writer.
```
