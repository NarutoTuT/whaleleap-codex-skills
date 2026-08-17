# Hero Animation Example

User request:

```text
Make this Shopify homepage hero feel more premium with motion.
```

Expected output:

```text
Motion objective:
Create a calm first impression and guide attention from product media to headline to CTA.

Where animation belongs:
Hero media, headline, supporting copy, primary CTA, proof row.

Where animation should be avoided:
Navigation, price/promotion text that must be readable immediately, mobile above-the-fold content delays.

Timeline:
0ms: media visible with 220ms opacity settle.
80ms: headline y 10 to 0 and opacity 0 to 1 over 520ms.
160ms: support copy reveal over 360ms.
220ms: CTA and proof reveal over 280ms.

Trigger behavior:
Run once on first hero render. Do not replay on scroll.

Technology choice:
CSS animation or GSAP timeline depending on existing project stack. No ScrollTrigger required.

Responsive behavior:
Desktop uses slight stagger. Mobile shows content immediately or with shorter 160-240ms grouped reveal.

Reduced motion behavior:
All content visible immediately. No translate, scale, or stagger.

Performance risks:
Avoid animating large blur or filter on hero image/video.

Implementation handoff:
Owner: shopify-frontend-code-writer.
```
