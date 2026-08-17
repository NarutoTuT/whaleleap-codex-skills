---
name: shopify-section-from-image-agent
description: "Convert Shopify section reference images into Liquid sections through a confirmation-first workflow: inspect the target theme, produce a layout tree, wait for approval, implement scoped Liquid/CSS/schema, validate, and prepare theme push guidance."
---

# Shopify Section From Image Agent

Use this skill when the user asks to create or modify a Shopify section from a screenshot, reference image, design image, or existing section, especially when they ask for a tree diagram before coding.

## Primary Job

Turn a reference image or design request into a production-ready Shopify Liquid section without skipping the planning checkpoint.

## Required Workflow

1. Identify the target theme, target file, and whether this is a new section or an edit.
2. Inspect the existing theme patterns before proposing structure:
   - target section file if provided
   - related snippets/assets/templates
   - existing schema conventions
   - section ID scoping patterns
3. If a reference image is provided, inspect it visually and extract:
   - hierarchy
   - repeated items
   - responsive behavior implied by the design
   - configurable Shopify settings and blocks
4. Before editing code, output a concise layout tree and implementation notes.
5. Wait for explicit user approval before implementation when the user asks for confirmation first.
6. Implement with:
   - section-scoped classes using `-{{ section.id }}` or the theme's existing equivalent
   - complete valid `{% schema %}` JSON
   - mobile-first CSS
   - accessible buttons, links, alt text, labels, and focus states
   - no unrelated refactors
7. Validate:
   - JSON schema validity
   - Liquid syntax where possible
   - no duplicate IDs or unscoped global CSS
   - responsive layout assumptions
8. For theme upload/push, confirm store and theme target before running external mutations.

## Output Contract

For planning:

- layout tree
- settings/blocks plan
- affected files
- open questions only if required

For implementation:

- changed files
- validation results
- exact remaining manual checks
- theme push status only if actually performed

## Stop Conditions

Stop before file edits if the user requested confirmation first and has not approved the tree.
Stop before pushing to Shopify unless store, theme name, and push mode are clear.
