# GSAP Patterns

## When to Use GSAP

Use GSAP when CSS or IntersectionObserver is not enough:

- Multi-step timeline orchestration.
- Precise sequencing.
- ScrollTrigger pin/scrub/progress.
- Complex hero entrance.
- Coordinated media, text, and CTA motion.
- Reversible interactions.

Do not add GSAP for simple hover, menu fade, tab fade, or basic scroll reveal.

## Timeline Planning

Specify a timeline before implementation:

```text
0ms: section becomes visible
0-220ms: media opacity 0 to 1, y 12 to 0
80-360ms: heading opacity 0 to 1, y 8 to 0
140-420ms: body and CTA reveal
Stop: all content remains visible
```

Implementation owner should convert the plan into code.

## ScrollTrigger Guidance

Use ScrollTrigger for:

- Scroll-linked product storytelling.
- Pinning a media panel while details change.
- Progress indicators tied to sections.
- Controlled parallax with clear start/end.

Avoid ScrollTrigger for:

- Every section reveal.
- Product grids.
- Navigation dropdowns.
- Cart drawer.
- Theme editor-only behavior.

## Lenis Guidance

Use Lenis only when smooth scroll is central to the intended experience. Confirm:

- Native keyboard and anchor navigation still work.
- Shopify theme editor remains usable.
- Focus management is not broken.
- Reduced motion disables smooth scroll.
- ScrollTrigger refresh is coordinated if used together.

## GSAP + Shopify Safety

Shopify themes can re-render sections in Theme Editor and through dynamic app blocks. Requirements should include:

- Initialize per section.
- Avoid duplicate initialization.
- Clean up timelines on section unload when applicable.
- Refresh ScrollTrigger after image load, Swiper init, accordion expansion, and dynamic content.
- Do not rely on hardcoded global selectors when section-scoped selectors exist.

## Preferred Properties

Animate:

- `opacity`
- `transform`
- CSS variables used for transform/opacity

Avoid animating:

- `top`, `left`, `width`, `height`
- `margin`, `padding`
- expensive filters on large images
- layout-triggering properties

## Reduced Motion

Reduced motion requirements:

- Set content visible by default.
- Disable scrub, parallax, pinning, scale, and long translate.
- Preserve open/close state changes.
- Avoid delayed content reveal.
- Turn smooth scroll off.
