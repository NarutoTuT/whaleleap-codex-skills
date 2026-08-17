# Shopify Homepage Combined Audit Example

## Scope

Homepage on an unpublished theme at desktop and mobile, with accessibility and performance both requested.

## Example Findings

### P1: Hero reveal leaves heading unavailable in reduced motion

- Evidence: `MANUAL`
- Criterion: content must remain perceivable and operable; confirm exact WCAG mapping during audit
- Impact: users requesting reduced motion cannot access the primary message
- Requirement: critical hero content must be visible without animation initialization
- Owner: `shopify-frontend-code-writer`
- Acceptance: heading and CTA are visible and keyboard reachable before and after script initialization with reduced motion enabled

### P1: Mobile LCP delayed by undiscovered hero image

- Evidence: `LAB`; field data unavailable
- Metric: LCP
- Root cause: hypothesis based on waterfall and late CSS background discovery
- Requirement: expose the LCP resource early using an appropriate responsive image strategy
- Owner: `shopify-frontend-code-writer`
- Acceptance: repeat lab trace under identical conditions; then monitor mobile field LCP when sufficient data exists

The gate remains qualified because field performance evidence is unavailable.
