# Official Baselines

Verify these sources before standards-based conclusions because metrics and platform behavior can change.

## Accessibility

- WCAG 2.2 Recommendation: https://www.w3.org/TR/WCAG22/
- WAI overview and supporting material: https://www.w3.org/WAI/standards-guidelines/wcag/
- Understanding WCAG 2.2: https://www.w3.org/WAI/WCAG22/Understanding/

WCAG conformance applies to complete pages and responsive variations. Automated testing alone does not prove conformance. Use Level AA as the default product target unless the user names another requirement; legal applicability remains outside this Skill.

## Core Web Vitals

- Web Vitals lifecycle and measurement: https://web.dev/articles/vitals
- Shopify Web Performance reports: https://help.shopify.com/en/manual/online-store/web-performance/web-performance-reports
- Shopify theme performance practices: https://shopify.dev/docs/storefronts/themes/best-practices/performance

Current stable Core Web Vitals:

| Metric | Good | Needs improvement | Poor |
|---|---:|---:|---:|
| LCP | `<= 2.5s` | `> 2.5s` and `<= 4.0s` | `> 4.0s` |
| INP | `<= 200ms` | `> 200ms` and `<= 500ms` | `> 500ms` |
| CLS | `<= 0.1` | `> 0.1` and `<= 0.25` | `> 0.25` |

Evaluate the 75th percentile separately for mobile and desktop. Confirm thresholds against current official sources when issuing a long-lived standard, contract or release criterion.

## Evidence Caveats

- Shopify Web Performance reports use real-user data and can lag behind recent changes.
- Password-protected or low-traffic stores may lack representative field data.
- Lab results are reproducible diagnostics, not substitutes for field distribution.
- Lighthouse scores combine weighted lab audits and should not be used as a standalone business KPI.
