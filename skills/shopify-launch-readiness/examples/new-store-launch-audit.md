# New Store Launch Audit Example

## Launch Context

- Store: `example-store.myshopify.com`
- Theme: ID `123456789`, unpublished candidate
- Market: United States
- Evidence: Sample only; not a real audit

## Executive Gate

`NO-GO`

Checkout is reachable, but no shipping rate is available for an intended launch address. Payment live-mode confirmation is also outstanding.

## Critical Blockers

| Finding | Status | Impact | Priority | Owner |
|---|---|---|---|---|
| Intended US address has no shipping rate | FAIL | Customer cannot complete checkout | P0 | Merchant operations |
| Payment provider mode not confirmed | MANUAL CHECK | Live orders may not be chargeable | P0 | Merchant finance |

## Remediation Sequence

1. Merchant operations corrects the shipping zone or location assignment.
2. Merchant finance confirms the payment provider and mode.
3. `shopify-storefront-qa` retests the cart-to-checkout journey.
4. Re-run the launch gate using fresh evidence.

This example demonstrates format only. Never reuse its statuses as evidence.
