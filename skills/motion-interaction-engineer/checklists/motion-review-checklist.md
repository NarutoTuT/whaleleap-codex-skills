# Motion Review Checklist

## Strategy

- Does every animation have a clear purpose?
- Does motion improve brand feel, guidance, comprehension, conversion, feedback, or continuity?
- Are any animations decorative, repetitive, or slowing the user down?
- Is the strongest motion reserved for the most important moment?

## Timing

- Are micro-interactions under 160ms?
- Are menu/tab/drawer transitions around 140-280ms?
- Are section reveals under 420ms?
- Is total stagger under 250ms for commercial content?
- Are exits faster than entrances?

## Technical Fit

- Can CSS handle this instead of GSAP?
- Is IntersectionObserver enough for simple reveal?
- Is ScrollTrigger justified by real scroll-linked behavior?
- Is Lenis necessary and safe?
- Are Swiper animations tied to slide lifecycle correctly?

## Shopify Safety

- Does it survive Theme Editor reload?
- Does it avoid duplicate initialization?
- Does it handle app-injected blocks?
- Does it avoid hidden content after Ajax, filtering, or variant changes?
- Does it keep cart drawer and mega menu interactions stable?

## Performance

- Are only transform/opacity animated where possible?
- Are layout-affecting properties avoided?
- Are observers/listeners scoped and cleaned up?
- Are large product grids not over-animated?
- Are images/media loaded before dependent measurements?

## Accessibility

- Is `prefers-reduced-motion` supported?
- Is all content visible without animation?
- Are focus states preserved?
- Does keyboard navigation still work?
- Does ESC close menus/popups/drawers?

## Responsive QA

- Desktop tested.
- Tablet tested.
- Mobile tested.
- Fast scroll tested.
- Resize tested.
- Back/forward tested.
- Page refresh from top tested.
- Page refresh from middle tested.
