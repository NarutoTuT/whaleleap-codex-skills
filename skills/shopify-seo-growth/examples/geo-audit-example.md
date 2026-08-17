# GEO Audit Example

User: Check whether this Shopify store is ready for AI Search.

Response shape:

```text
Issue:
The store does not provide a clear crawlable brand/entity summary.

Business impact:
AI search systems may struggle to explain what the brand sells, why it is trustworthy, and which products belong to which category.

Priority:
P2

Recommended action:
Create an entity-focused About/Support content block and add Organization schema requirements.

Technical specification:
Expose brand name, URL, logo, support channels, sameAs profiles, product categories, and differentiators in crawlable HTML.

Affected Shopify files:
About page template, global structured data snippet, theme settings/metafields.

Implementation owner:
shopify-frontend-code-writer
```
