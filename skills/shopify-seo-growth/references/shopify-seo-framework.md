# Shopify SEO Framework

## Scope

Use this framework for full-store Shopify SEO audits and technical SEO planning. Define requirements only; do not implement Liquid or edit theme files.

## Technical SEO Areas

### Crawlability

Check whether key product, collection, page, and article URLs are discoverable through navigation, collections, breadcrumbs, internal links, sitemap, and clean HTML links.

Flag:

- Important pages only reachable through JavaScript-only interactions.
- Orphan product pages.
- Collection pages missing from navigation or internal linking.
- Excessive faceted/filter URLs that dilute crawl budget.

### Indexation

Check whether important templates should be indexable and whether low-value URLs should be controlled.

Flag:

- Accidental `noindex`.
- Duplicate variants, search pages, filter URLs, or paginated paths indexed without strategy.
- Product pages unavailable because of hidden canonical or unpublished status.

### robots.txt

Shopify supports `robots.txt.liquid`. Requirements should specify allow/disallow intent and affected URL patterns.

Do not recommend blocking pages that need to be indexed. For duplicates, prefer canonical/noindex strategy when appropriate.

### sitemap.xml

Shopify generates sitemap files. Audit whether important resources appear and whether stale URLs or unexpected exclusions exist.

### Canonical URLs

Check canonical consistency for:

- Product URLs under `/products/handle` versus collection product URLs.
- Collection pagination and filtered URLs.
- Blog and article URLs.
- International domains or language paths.

### hreflang

For international stores, define requirements for correct language/region alternates and self-referencing hreflang.

### URL Architecture

Prefer readable, stable, intent-aligned handles:

- `/products/descriptive-product-handle`
- `/collections/category-intent`
- `/blogs/resource-topic/article-intent`

Flag generic, duplicated, or keyword-stuffed handles.

### Duplicate Content

Common Shopify duplication sources:

- Product available through multiple collections.
- Variant parameters.
- Search result pages.
- Tagged blog pages.
- Filtered collection URLs.
- Similar product descriptions across variants.

### Pagination SEO

Audit collection pagination for crawlable navigation, canonical strategy, and avoidance of infinite-scroll-only discovery.

## Audit Output

For each issue, include issue, impact, priority, action, technical spec, affected Shopify files, and implementation owner.
