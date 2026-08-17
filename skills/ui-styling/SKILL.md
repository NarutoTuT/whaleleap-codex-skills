---
name: ui-styling
description: "Use for implementing React web interfaces with Tailwind CSS, shadcn/ui, and Radix UI: components, responsive utility styling, accessible primitives, forms, dialogs, tables, navigation, theming, and dark mode. Follow an approved design or the existing product system. Do not use for Shopify Liquid/themes, visual strategy, brand assets, posters, design-token ownership, generic UX audits, motion strategy, or non-React styling work."
---

# UI Styling

## Purpose

Own React implementation when Tailwind CSS, shadcn/ui, or Radix UI is the relevant project stack. This is an implementation Skill, not a visual-strategy or design-system owner.

## Use When

- Implementing React, Next.js, Vite, Remix, or Astro UI with Tailwind
- Adding or composing shadcn/ui and Radix components
- Building accessible dialogs, drawers, forms, tables, navigation, command menus, and feedback states
- Implementing responsive utilities, CSS-variable themes, or dark mode in that stack
- Refactoring existing Tailwind/shadcn UI without changing product strategy

## Do Not Use When

- The task is Shopify Liquid or Theme implementation
- The user is deciding visual direction, page hierarchy, CRO, branding, or token architecture
- The request is a poster, banner, canvas composition, or generated visual asset
- The task is a general UX, motion, accessibility/performance, or SEO audit
- The repository does not use React/Tailwind/shadcn/Radix and the user did not request adopting them

## Workflow

1. Inspect the framework version, package manifest, component registry, Tailwind setup, aliases, and existing conventions.
2. Confirm whether shadcn/Radix components already exist before adding dependencies.
3. Implement the smallest component and styling change that satisfies the approved design.
4. Preserve semantic HTML, keyboard behavior, focus management, and component state contracts.
5. Verify responsive layout, dark/light themes, loading/error/empty/disabled states, and text fit.
6. Run project-native type, lint, test, and browser checks where available.

## Rules

- Prefer existing components and tokens over introducing new variants.
- Use Radix or native semantics for complex interactive primitives.
- Keep Tailwind classes statically discoverable; avoid fragile runtime-generated class names.
- Extract a component or variant only when it represents real reuse.
- Do not install packages without checking the repository and obtaining authorization when required.
- Verify current framework documentation when version-sensitive syntax matters.

## References

Load only what the task needs:

- `references/shadcn-components.md`
- `references/shadcn-theming.md`
- `references/shadcn-accessibility.md`
- `references/tailwind-utilities.md`
- `references/tailwind-responsive.md`
- `references/tailwind-customization.md`

Use `scripts/shadcn_add.py` and `scripts/tailwind_config_gen.py` only after inspecting the project and confirming their output matches the installed versions.

## Required Output

```text
Implementation summary:
Components and files changed:
Existing conventions reused:
Responsive and theme behavior:
Accessibility behavior:
Validation performed:
Residual risks:
```
