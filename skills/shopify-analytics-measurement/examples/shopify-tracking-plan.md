# Shopify Tracking Plan Example

## Decision

Determine whether shoppers who use collection filters reach product detail and cart more often.

## Measurement

- Primary metric: filtered-session add-to-cart rate
- Guardrails: collection exit rate, product-view rate and page performance
- Source of truth: validated behavioral events; Shopify orders for transaction totals

## Event Contract Excerpt

| Business action | Source | Destination | Required fields | Consent | Deduplication |
|---|---|---|---|---|---|
| Filter applied | Theme-defined custom action | Approved custom event | filter group, value, collection ID | Analytics | One state transition |
| Product viewed | Shopify `product_viewed` | GA4 `view_item` | item ID, variant ID, price, currency | Analytics | Source event ID/session rule |
| Product added | Shopify `product_added_to_cart` | GA4 `add_to_cart` | items, value, currency | Analytics | Source event ID |

The custom filter event is justified by the named decision. Do not add click events for every filter control when the state transition answers the question.
