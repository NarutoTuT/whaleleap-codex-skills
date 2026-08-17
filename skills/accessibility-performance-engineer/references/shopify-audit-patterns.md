# Shopify Audit Patterns

## Ownership Surfaces

| Surface | Likely Owner | Evidence |
|---|---|---|
| Sections, snippets, assets and layout | Theme implementation | File references and rendered selectors |
| App blocks and app embeds | App/vendor or merchant configuration | App identifier, injected markup and requests |
| Pixels and customer events | Analytics/vendor owner | Pixel list, network and event evidence |
| Product text, alt text and media | Merchant/content operations | Admin content and rendered output |
| Checkout platform UI | Shopify or checkout customization owner | Checkout plan, extension and platform boundary |
| Navigation, markets and policies | Merchant/Admin owner | Admin configuration and storefront behavior |

Do not assign ownership from a filename guess alone. Theme code may wrap or alter app and merchant content.

## Theme Editor Lifecycle

For accessibility and performance defects involving dynamic sections, inspect load, unload, reorder, block selection and repeated initialization. A fix that works only after a full page load is incomplete when the Theme Editor or section rendering can replace markup.

## Page-Type Matrix

At minimum choose representative:

- homepage
- collection or search
- product page with realistic media and variants
- cart drawer and cart page
- one content or campaign template when material

Expand only when templates or app ownership differ. Do not multiply lab tests across identical templates without a reason.

## Third-Party Tradeoffs

Report both cost and merchant value. Recommend removal, delay, conditional loading, configuration or vendor escalation based on evidence. Do not delete apps, pixels or scripts during audit.

## Handoff

For theme-owned findings provide selectors, template/page type, likely files, reproduction, acceptance criteria and regression pages. For app-, content-, Admin- or platform-owned findings name the correct owner and the evidence required from them.
