---
name: shopify-agency-design-system
description: "Use for Shopify storefront design strategy, ecommerce CRO structure, information hierarchy, responsive layout specifications, premium visual direction, trust architecture, and Theme Editor content-model requirements. Produce implementation-ready design requirements for Shopify homepages, PDPs, collection pages, landing pages, and sections. Do not write Liquid, CSS, JavaScript, JSON schema, or modify theme files; implementation belongs to shopify-frontend-code-writer."
---

# Shopify Agency Design System

## Purpose

Own Shopify storefront design and CRO decisions. Convert business goals and merchant requirements into a clear page or section specification that a Shopify implementation Skill can execute.

## Use When

- Defining or improving a Shopify homepage, PDP, collection page, landing page, or section structure
- Deciding information hierarchy, CTA placement, trust content, objection handling, or conversion flow
- Establishing premium visual direction for a Shopify storefront
- Planning mobile and desktop responsive behavior
- Defining merchant-editable settings and blocks at a requirements level
- Reviewing whether an existing Shopify layout supports comprehension and conversion

## Do Not Use When

- The request is only to write or modify Liquid, CSS, JavaScript, snippets, templates, or section schema
- The user has already approved a design specification and only implementation remains
- The task is SEO, motion, accessibility/performance, analytics, copywriting, release, or general QA
- The task is a non-Shopify React or application interface

## Own

- Page and section hierarchy
- Ecommerce CRO layout and decision flow
- Offer, proof, trust, comparison, objection, and CTA placement
- Shopify-specific responsive design requirements
- Premium visual direction without imitating another brand
- Component and content requirements
- Theme Editor configurability requirements
- Design acceptance criteria

## Do Not Own

- Liquid, CSS, JavaScript, JSON templates, or schema implementation
- Theme file creation or modification
- Repository architecture or impact analysis
- Motion timelines or animation technology selection
- SEO/schema strategy, analytics, accessibility/performance audits, or theme release
- Final marketing copy

## Workflow

1. Identify the page type, audience, offer, primary action, and buying objections.
2. Inspect existing storefront conventions when repository or browser evidence is available.
3. Define the information hierarchy and responsive layout before visual details.
4. Specify conversion elements only when supported by credible content or data.
5. Define component states, merchant-editable content, and edge cases.
6. Return an implementation handoff without writing code.

## Design Principles

- Prioritize product clarity, trust, decision speed, and mobile usability.
- Keep one clear primary action per decision point.
- Use proof, shipping, returns, compatibility, fit, materials, FAQs, and support where they reduce real buyer uncertainty.
- Avoid decorative complexity, copied brand patterns, generic premium styling, and unsupported urgency.
- Treat mobile as a distinct decision flow, not a compressed desktop layout.

## Required Output

```text
Business objective:
User decision:
Page or section hierarchy:
CRO rationale:
Visual direction:
Responsive behavior:
Merchant-editable requirements:
States and edge cases:
Acceptance criteria:
Implementation owner: shopify-frontend-code-writer
```

If motion is material, hand off motion requirements to `motion-interaction-engineer`. If copy needs refinement, hand off to `humanizer` after the structure is approved.
