# Measurement Framework

## Decision Chain

For every measurement request define:

1. Decision to be made.
2. Business question.
3. Primary metric and guardrails.
4. Formula, grain and segmentation.
5. Source of truth.
6. Required events and dimensions.
7. Data-quality threshold.
8. Decision owner and review cadence.

Reject metrics that have no decision or owner.

## Ecommerce Funnel

Use business stages rather than tool-specific names:

- discovery
- product consideration
- cart intent
- checkout start
- checkout progression
- purchase completion
- fulfillment, cancellation and refund
- repeat purchase or retention

Define the denominator, user/session/order grain, lookback window and identity limitations for every conversion rate.

## Source of Truth

| Question | Typical source |
|---|---|
| Orders, payment and merchant revenue | Shopify order/finance data |
| On-site behavior and journeys | Validated analytics events |
| Search visibility | Search Console or SEO owner |
| Ad-platform attribution | Respective ad platform, with model caveat |
| Experiment assignment | Experiment platform or controlled assignment log |

One dashboard may combine sources, but must not erase differences in definitions.

## KPI Contract

Document:

- metric name and purpose
- exact numerator and denominator
- dimensions and exclusions
- timezone and currency
- gross/net/refund treatment
- source tables/events
- expected delay and completeness
- owner and change history

Do not use "conversion rate", "revenue" or "customer" without defining the term.
