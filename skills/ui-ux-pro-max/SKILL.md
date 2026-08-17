---
name: ui-ux-pro-max
description: "Use only as a read-only UI/UX reference database when the user explicitly asks for design research, style options, color or typography candidates, landing-page patterns, chart choices, UX heuristics, or stack-specific reference lookup. Run targeted searches and return evidence from the bundled datasets for another design owner to evaluate. Do not own project design, generate a mandatory design system, implement code, perform specialist accessibility/performance or motion audits, or override existing brand and product conventions."
---

# UI/UX Pro Max

## Purpose

Query the bundled design datasets for candidate patterns and heuristics. This Skill is a reference source, not a project owner, design authority, audit owner, or implementation workflow.

## Use When

- The user explicitly requests UI/UX research or database-backed options
- A design owner needs style, palette, typography, landing pattern, chart, UX, or stack references
- The user asks to compare several design directions before choosing one
- A targeted reference lookup can resolve a specific design question

## Do Not Use When

- A direct Shopify design, frontend design, implementation, motion, SEO, or accessibility/performance Skill can own the request
- The task is ordinary page creation, component implementation, UI bug fixing, or code optimization
- The project already has an approved brand or design system and no reference research is requested
- The request concerns React Native merely because that dataset exists

## Ownership Rules

- Return candidates, not final project decisions.
- Treat dataset results as references that require context and judgment.
- Never make `--design-system` mandatory.
- Never persist generated design-system files unless the user explicitly asks.
- Never attach GSAP snippets when motion strategy belongs to `motion-interaction-engineer`.
- Never use generic UX records as a substitute for `accessibility-performance-engineer`.
- Do not implement the selected direction.

## Search Workflow

1. Identify the exact research question and relevant domain.
2. Resolve this Skill's installed directory and run its bundled script:

```bash
python3 "<ui-ux-pro-max-skill-directory>/scripts/search.py" "<query>" --domain <domain>
```

3. Use `--design-system` only when the user explicitly requests a broad design-system recommendation.
4. Use `--stack` only when the requested stack exists in the dataset and matches the real project.
5. Summarize the strongest candidates, limitations, and conflicts with existing brand or product rules.
6. Hand the references to the appropriate owner.

## Available Domains

- `product`: product-type patterns
- `style`: visual-style references
- `typography`: font-pairing candidates
- `color`: palette candidates
- `landing`: landing-page structures
- `chart`: chart selection
- `ux`: general heuristics and anti-patterns
- `react`: React/Next.js performance references
- `web`: mobile-app interface references
- `gsap`: motion examples for reference only
- `prompt`: style keywords and prompt vocabulary

Not every domain is appropriate for Shopify or desktop web. State dataset scope when it limits relevance.

## Required Output

```text
Research question:
Dataset/domain searched:
Candidate references:
Why they may fit:
Known limitations or conflicts:
Recommended owner for the final decision:
```
