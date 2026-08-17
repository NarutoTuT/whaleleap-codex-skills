# Performance and Accessibility

## Performance Rules

Prefer:

- `transform` and `opacity`.
- CSS transitions for small interactions.
- IntersectionObserver for lightweight reveal.
- Lazy initialization for below-the-fold animation.
- One animation system per interaction.

Avoid:

- Multiple scroll listeners doing layout reads.
- Animating large filters, shadows, blur, width, height, padding, or top/left.
- Running reveal observers on hundreds of nodes.
- Re-initializing animations after every Shopify section load.
- Swiper and reveal systems competing over slide opacity.

## Shopify-Specific Risks

Check:

- Theme Editor section reloads.
- Dynamic app blocks.
- Product media loaded after init.
- Swiper clone slides.
- Cart drawer content replaced after Ajax updates.
- Header hide/show interactions while menus are open.

## Accessibility

Requirements:

- Respect `prefers-reduced-motion: reduce`.
- Keep all content visible when animation is disabled.
- Preserve keyboard focus.
- Preserve ESC close behavior for menus, drawers, and popups.
- Do not animate focus away from the active element.
- Do not rely on animation to communicate essential information.

## Reduced Motion Checklist

- Disable parallax, scrub, pinning, smooth scroll, large scale, and large translate.
- Remove stagger delays.
- Keep opacity at visible state.
- Keep menus/drawers/tabs functional.
- Keep carousel navigation functional.

## QA Requirements

Test:

- First page load.
- Refresh from page top.
- Refresh from page middle.
- Fast scroll.
- Back/forward navigation.
- Resize.
- Mobile and desktop.
- Reduced motion.
- Theme Editor section reload when working on Shopify.

Flag any content that can remain `opacity: 0`, `visibility: hidden`, off-screen, or pointer-blocked after animation failure.
