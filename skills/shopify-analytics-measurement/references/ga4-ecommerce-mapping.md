# GA4 Ecommerce Mapping

Verify current Google documentation:

- Ecommerce measurement: https://developers.google.com/analytics/devguides/collection/ga4/ecommerce
- Recommended events: https://developers.google.com/analytics/devguides/collection/ga4/reference/events
- DebugView: https://support.google.com/analytics/answer/7201382

## Prefer Recommended Events

Typical ecommerce mappings include:

- product list shown -> `view_item_list`
- product selected -> `select_item`
- product detail shown -> `view_item`
- add/remove cart -> `add_to_cart` / `remove_from_cart`
- cart shown -> `view_cart`
- checkout started -> `begin_checkout`
- shipping submitted -> `add_shipping_info`
- payment submitted -> `add_payment_info`
- purchase completed -> `purchase`
- refund recorded -> `refund`
- search submitted -> `search`

Confirm the current event and parameter reference before implementation.

## Item Contract

Define stable `item_id`, `item_name`, variant representation, item list context, price, quantity, discount, coupon, affiliation and category hierarchy. Choose product ID, variant ID, SKU or another identifier intentionally and keep it consistent across funnel events.

## Monetary Contract

- Include `currency` whenever `value` is sent.
- Define whether event value includes tax and shipping for each event.
- For purchase, preserve transaction ID and reconcile item totals, tax, shipping, discounts and final value.
- Define presentment versus shop currency for multi-market stores.

## Purchase Deduplication

- Use a stable transaction identifier.
- Prevent duplicate dispatch across Shopify integration, custom pixel, app pixel, theme script and tag manager.
- Test refresh, back/forward, accelerated checkout, retry and duplicate callback conditions.
- Verify both collection and processed reporting.

## Validation Layers

1. Browser payload.
2. GA4 DebugView or Realtime.
3. Processed event parameters and ecommerce reports.
4. Transaction-level comparison with Shopify.

DebugView visibility alone does not prove processed reports or revenue calculations are correct.
