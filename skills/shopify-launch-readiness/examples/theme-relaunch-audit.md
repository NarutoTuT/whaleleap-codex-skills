# Theme Relaunch Audit Example

## Scenario

An existing live store will publish a redesigned theme. Commerce configuration is unchanged, but navigation, search, PDP and cart behavior changed.

## Minimum Routing

1. Confirm the live store, candidate theme and release window.
2. Consume `shopify-storefront-qa` evidence for changed storefront flows.
3. Use `code-impact-graph` only if unresolved defects require risky shared-code changes.
4. Recheck app embeds, pixels, consent, localized navigation and account routes in the candidate theme.
5. Issue the gate.
6. Hand a positive gate to `shopify-theme-release-agent` for release execution.

## Example Gate

`CONDITIONAL GO`: no P0 issues; one analytics event remains unverified and has an owner, deadline and manual monitoring contingency.
