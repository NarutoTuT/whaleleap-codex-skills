# Structured Data Guide

## Scope

Define structured data requirements for Shopify. Do not write Liquid implementation.

## Product Schema Requirements

Product pages should expose accurate Product data when available:

- `name`
- `description`
- `image`
- `brand`
- `sku` or other identifiers when available
- `offers`
- `price`
- `priceCurrency`
- `availability`
- `url`
- `aggregateRating` when compliant review data exists
- `review` when compliant review content exists

Avoid fabricated ratings, fake review counts, or mismatched prices.

## Review Schema

Only require review schema when reviews are visible to users and come from trustworthy review data. Requirements should identify source app/metafields if known.

## Organization Schema

Use for brand/entity clarity:

- Organization name.
- URL.
- Logo.
- SameAs links.
- Contact/support information when appropriate.

## Breadcrumb Schema

Use when visible breadcrumb navigation exists or should exist. Breadcrumb structure should reflect useful store hierarchy, not arbitrary collection paths.

## FAQ Schema

Use only for visible FAQ content. Avoid marking up promotional claims or hidden content.

## Validation Requirements

Recommend validation with:

- Google Rich Results Test.
- Schema Markup Validator.
- Search Console rich result reports when available.

## Implementation Handoff

Return:

- Schema type.
- Required properties.
- Data sources: Shopify objects, metafields, metaobjects, review app data, settings.
- Affected template/section/snippet types.
- Implementation owner: `shopify-frontend-code-writer`.
