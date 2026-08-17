---
name: frontend-design
description: "Use for visual and interaction design specifications for non-Shopify websites and web applications: responsive layout, information hierarchy, component composition, states, visual refinement, and design acceptance criteria. Use when the primary task is deciding how a general web interface should look and behave. Do not use for Shopify storefront design, Shopify Theme code, React/Tailwind/shadcn implementation, design-token architecture, motion engineering, or specialist accessibility/performance audits."
---

# Frontend Design

## Purpose

Own design decisions for non-Shopify web interfaces. Produce an implementation-ready visual and responsive specification without assuming a particular component library or writing production code.

## Use When

- Designing a general website, SaaS interface, dashboard, portal, or marketing page
- Improving information hierarchy, responsive composition, visual rhythm, or component states
- Reviewing a non-Shopify interface for visual clarity and usability
- Preparing design acceptance criteria before implementation

## Do Not Use When

- Shopify storefront structure or CRO is the primary task; use `shopify-agency-design-system`
- Shopify Theme implementation is requested; use `shopify-frontend-code-writer`
- React, Tailwind, shadcn, or Radix implementation is requested; use `ui-styling`
- Token architecture is the task; use `design-system`
- Motion strategy or specialist accessibility/performance auditing is the task

## Workflow

1. Identify the user, primary task, content priority, and target viewports.
2. Inspect existing product and design conventions before proposing changes.
3. Define hierarchy and responsive behavior before decoration.
4. Specify component states, empty/loading/error behavior, and interaction expectations.
5. Check text fit, focus visibility, contrast intent, and mobile ergonomics.
6. Return a design handoff and acceptance criteria; stop before implementation unless a separate implementation owner is selected.

## Design Standards

- Make the primary task or offer visible in the first viewport.
- Use restrained surfaces, clear grids, modest radii, and purposeful hierarchy.
- Avoid nested cards, decorative blobs, one-color palettes, and oversized typography inside compact tools.
- Use familiar icons for common actions with labels or tooltips where needed.
- Keep text inside its container across required viewports.
- Define all meaningful states rather than designing only the ideal state.

## Required Output

```text
User objective:
Information hierarchy:
Layout specification:
Responsive behavior:
Components and states:
Visual direction:
Accessibility considerations:
Acceptance criteria:
Implementation owner:
```
