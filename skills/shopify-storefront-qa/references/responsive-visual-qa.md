# Responsive Visual QA

## Viewport Method

Test the requested breakpoints and at least one width immediately before or after a suspect breakpoint. Reload after major viewport changes when initialization may be width-dependent.

Record viewport dimensions with each finding.

## Layout Checks

- No unintended horizontal page scroll
- No clipped text, controls, badges, prices, or media
- No incoherent overlap between sticky, fixed, drawer, modal, header, and content layers
- Stable grid/card dimensions during loading and interaction
- Correct container width and alignment
- Media preserves the intended subject and aspect ratio
- Long titles, prices, translations, and button labels fit
- Dynamic content does not cause destructive layout shift

## Interaction Checks

- Touch targets remain reachable and sufficiently separated
- Hover-only behavior has a touch/keyboard equivalent where required
- Fixed controls do not cover checkout or form controls
- Drawers and modals fit the viewport and allow internal scrolling
- Keyboard focus remains visible
- Mobile browser safe areas and bottom bars do not cover primary actions

## Comparison Rules

Compare against:

- Approved design or reference only when supplied
- Existing theme system for typography, spacing, radius, color, and controls
- Another viewport only for behavioral parity, not pixel identity

Do not invent a redesign during QA. Report deviations and assign design ownership when the expected presentation is unclear.

## Screenshot Set

For full-page QA, capture at minimum:

- Initial viewport
- Primary interaction open state
- One critical success state
- One failing state per reproducible defect
- Mobile equivalent of any responsive defect

Use focused screenshots for evidence and full-page screenshots for context.
