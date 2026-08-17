# Example: Post-Push Smoke Test

## Target Lock

- Store: exact store handle recorded
- Theme: exact theme name and ID recorded
- Environment: live or preview explicitly identified
- Files/change: release owner supplied the pushed file list

## Smoke Coverage

| Priority | Scenario | Expected |
| --- | --- | --- |
| P0 | Homepage load | Header, primary content, CTA, and footer render |
| P0 | PDP add-to-cart | Cart state and UI update correctly |
| P0 | Cart to checkout route | Checkout route is reachable; do not place order |
| P1 | Search query | Results and no-results states render |
| P1 | Navigation | Desktop and mobile primary paths work |
| P1 | Changed component | Exact acceptance criteria pass |
| P1 | Console/network | No new blocking first-party error |

## Result Rules

- State `PASS` only for executed rows.
- Mark inaccessible customer, market, locale, or editor states `NOT TESTED`.
- A successful push command is not storefront QA evidence.
- A cached or mismatched theme response produces `BLOCKED` until the target is proven.
