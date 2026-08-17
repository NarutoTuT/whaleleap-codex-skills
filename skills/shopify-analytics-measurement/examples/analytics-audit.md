# Analytics Audit Example

## Result

`NEEDS FIX`

## Finding

### P0: Purchases are collected by two independent integrations

- Evidence: browser payloads and GA4 DebugView show two `purchase` events with the same transaction ID
- Impact: revenue and conversion reporting are unreliable
- Likely owners: native integration and custom pixel
- Requirement: choose one authoritative purchase mapping and disable the duplicate path through the correct configuration owner
- Acceptance: one purchase event per transaction across normal, refresh and accelerated-checkout scenarios; processed reporting retains one transaction

Do not change the pixel configuration from this Skill.
