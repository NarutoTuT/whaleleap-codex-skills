# Shopify SEO Audit Example

User: Audit this Shopify store for SEO and organic growth.

Response shape:

```text
Issue:
Collection filter URLs appear indexable without a canonical/noindex strategy.

Business impact:
Search engines may crawl and index many low-value duplicate category pages, diluting ranking signals for primary collections.

Priority:
P1

Recommended action:
Define which filters deserve indexable landing pages and control the rest.

Technical specification:
Primary collection pages should self-canonicalize. Low-value filter combinations should not compete with canonical collection URLs.

Affected Shopify files:
Collection template, collection filter section/snippet, canonical output in theme layout if customized.

Implementation owner:
shopify-frontend-code-writer
```
