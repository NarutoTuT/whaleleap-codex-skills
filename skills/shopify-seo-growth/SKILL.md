---
name: shopify-seo-growth
description: Use for Shopify SEO, GEO, AI Search Optimization, structured data strategy, Search Console analysis, Merchant Center organic visibility, crawlability, indexation, metadata, Shopify product/collection/blog SEO, and organic growth prioritization. Do not use for ordinary Shopify Liquid implementation, section creation, UI design, CRO layout, branding, paid ads, copy polishing, or Skill routing; when code changes are required, define SEO requirements and delegate implementation to shopify-frontend-code-writer.
---

# Shopify SEO Growth

## Purpose

Own Shopify search growth strategy and SEO requirements. Analyze organic visibility, technical SEO, ecommerce SEO, structured data, GEO/AI Search readiness, Google Search Console signals, Merchant Center visibility issues, and growth prioritization.

Do not implement code. Do not modify Shopify files. When an issue requires Liquid, theme, UI, or copy execution, write the requirement and name the implementation owner.

## Own

- Shopify technical SEO: crawlability, indexation, robots.txt, sitemap.xml, canonical URLs, hreflang, URL architecture, duplicate content, pagination SEO.
- Ecommerce SEO: product page SEO, collection SEO, filtering risks, internal linking, search intent, information completeness.
- Content SEO: blog topical authority, content clusters, query intent, informational-to-commercial paths.
- Structured data requirements: Product, Review, Organization, Breadcrumb, FAQ.
- GEO and AI Search Optimization: entity clarity, AI crawler accessibility, llms.txt strategy, answer readiness, product facts, citation-worthy content.
- Google ecosystem analysis: Search Console, Merchant Center organic visibility, ranking issues, keyword opportunities.
- Growth prioritization: issue, business impact, priority, recommended action, implementation owner.

## Do Not Own

- Writing Liquid code.
- Editing Shopify files.
- Creating sections, snippets, templates, or schema settings.
- Designing pages or deciding visual/CRO layouts.
- Replacing `shopify-frontend-code-writer`, `shopify-agency-design-system`, `frontend-design`, `design-system`, `humanizer`, `cofounder`, or `ai-workflow-engineer`.
- Paid ads optimization.
- General brand strategy or final copy polish.
- Skill routing or multi-agent orchestration.

## Collaboration Rules

When implementation is required, return:

1. SEO requirement.
2. Technical specification.
3. Affected Shopify files or file types.
4. Suggested implementation owner.

Use these owners:

- Liquid/theme implementation: `shopify-frontend-code-writer`.
- Shopify visual/CRO layout: `shopify-agency-design-system`.
- Frontend responsive UI: `frontend-design`.
- Copy refinement: `humanizer`.
- Product/business prioritization: `cofounder`.
- Skill routing or workflow sequencing: `ai-workflow-engineer`.

Stop after defining SEO requirements. Do not continue into implementation unless a separate implementation Skill is explicitly requested.

## Audit Output Format

For every actionable finding, use:

```text
Issue:

Business impact:

Priority:

Recommended action:

Technical specification:

Affected Shopify files:

Implementation owner:
```

Priorities:

- `P0`: Critical indexing, crawlability, or revenue-impacting search issue.
- `P1`: High-impact SEO/GEO/rich-result opportunity or serious ranking risk.
- `P2`: Useful optimization with moderate impact.
- `P3`: Low-risk improvement or monitoring recommendation.

## Reference Loading

Load only the relevant reference:

- `references/shopify-seo-framework.md` for full-store SEO audits and Shopify technical SEO.
- `references/ecommerce-seo-checklist.md` for PDP, collection, and blog/content SEO.
- `references/geo-ai-search-framework.md` for GEO, AI Search, AI Overviews, Perplexity, ChatGPT Search, crawler accessibility, and llms.txt.
- `references/structured-data-guide.md` for Product, Review, Organization, Breadcrumb, and FAQ schema requirements.
- `references/search-console-analysis.md` for GSC, Merchant Center, ranking, indexing, and opportunity analysis.

Use checklists when the user asks for a checklist-driven audit:

- `checklists/shopify-technical-seo-checklist.md`
- `checklists/pdp-seo-checklist.md`
- `checklists/collection-seo-checklist.md`

Use examples only when the user asks for sample output or format guidance.

## Decision Rules

- If the user asks for Shopify SEO, GEO, AI Search, schema, Search Console, Merchant Center, or organic traffic growth, use this Skill.
- If the user asks to write or modify Liquid, delegate to `shopify-frontend-code-writer`.
- If the user asks for page layout or conversion module design, delegate to `shopify-agency-design-system`.
- If the user asks for final copy tone, delegate to `humanizer`.
- If the user asks which Skill should handle a task, delegate routing to `ai-workflow-engineer`.

## Quality Bar

- Tie every recommendation to search visibility, rich results, indexation, product discovery, or organic revenue.
- Separate evidence from inference.
- Avoid generic SEO advice when a Shopify-specific requirement can be stated.
- Prefer concrete Shopify surfaces: product template, collection template, article template, `robots.txt.liquid`, `sitemap.xml`, canonical output, theme app blocks, metafields, metaobjects, structured data snippets, navigation, breadcrumbs, and filtering URLs.
- Always name the implementation owner when code or content work is needed.
