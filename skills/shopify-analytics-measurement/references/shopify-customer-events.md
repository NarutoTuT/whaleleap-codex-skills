# Shopify Customer Events

Verify current references before implementation:

- Standard Events: https://shopify.dev/docs/api/web-pixels-api/standard-events
- Standard API: https://shopify.dev/docs/api/web-pixels-api/standard-api
- Pixel Privacy: https://shopify.dev/docs/api/web-pixels-api/pixel-privacy

## Canonical Sources

Relevant standard events currently include:

- `page_viewed`
- `collection_viewed`
- `product_viewed`
- `search_submitted`
- `product_added_to_cart`
- `product_removed_from_cart`
- `cart_viewed`
- `checkout_started`
- `checkout_contact_info_submitted`
- `checkout_address_info_submitted`
- `checkout_shipping_info_submitted`
- `payment_info_submitted`
- `checkout_completed`

Confirm the current event schema and payload from official documentation before writing a contract. Do not infer missing fields from DOM text when the standard payload already provides a stable value.

## Pixel Types

- App pixels use Web Pixel extensions and declared privacy requirements.
- Custom pixels are configured in Shopify Admin and operate in the pixel sandbox.
- Theme scripts and tag managers may create parallel collection paths, which increases duplication risk.

Choose one authoritative source for each business action and document any intentional secondary destinations.

## Shopify-to-Destination Mapping

For each mapping record:

- Shopify source event
- destination event name
- transformation rules
- product versus variant identifier
- currency and value calculation
- transaction deduplication key
- consent requirement
- environment marker
- destination response and validation method

## Checkout Completion

Treat `checkout_completed` and its transaction/order identifiers as the basis for purchase mapping when appropriate. Validate accelerated checkout, test orders, subscriptions, retries, page refresh and thank-you/order-status behavior before claiming deduplication is safe.
