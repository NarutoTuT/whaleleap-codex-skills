# Example: Search System QA

## Target

Theme preview, search drawer, predictive search, and `/search?q=M5` results page.

## Coverage

| Surface | Desktop | Tablet | Mobile | Result |
| --- | --- | --- | --- | --- |
| Search drawer | PASS | NOT TESTED | PASS | PASS |
| Predictive results | FAIL | NOT TESTED | FAIL | FAIL |
| Results page | PASS | PASS | PASS | PASS |
| No-results state | PASS | NOT TESTED | PASS | PASS |

## Finding

### P1 Predictive search keeps stale results after rapid input

Surface: Predictive search  
Environment: Theme preview, Chrome, `390 x 844` and `1440 x 900`  
Preconditions: Search drawer open  
Steps to reproduce: Type `M5`, immediately replace with `Battery`, repeat five times  
Expected: Final list and heading represent `Battery`  
Actual: Previous `M5` response replaces the newer result in 3/5 attempts  
Evidence: Network order shows older response completing last; visible heading remains `M5`  
Frequency: 3/5  
User/business impact: Users see incorrect products and may abandon search  
Likely affected surface: Predictive-search request cancellation or response-order guard  
Implementation owner: `shopify-frontend-code-writer`  
Confidence: High

## Release Gate

`NEEDS FIX`: unresolved P1 state race in a primary discovery flow.
