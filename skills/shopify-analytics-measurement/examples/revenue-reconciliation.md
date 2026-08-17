# Revenue Reconciliation Example

## Scope

Compare Shopify orders with GA4 purchases for one market and reporting day.

## Method

1. Align timezone, currency and order inclusion rules.
2. Exclude documented test orders consistently.
3. Join by transaction ID.
4. Classify missing, duplicated and mismatched transactions.
5. Compare item value, discounts, tax, shipping and refunds under explicit definitions.
6. Separate consent/ad-blocking loss from implementation defects.
7. Report unexplained residuals and confidence.

The goal is not identical totals at any cost. The goal is to know why they differ and which decisions each system can support.
