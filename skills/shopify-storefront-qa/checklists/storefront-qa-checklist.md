# Storefront QA Checklist

## Target

- [ ] Exact store, theme, URL, environment, and timestamp recorded
- [ ] Scope, expected behavior, and excluded surfaces stated
- [ ] Test data and allowed mutations identified
- [ ] Required devices, locale/market, and customer state identified

## Baseline

- [ ] Page renders without fatal or blank critical regions
- [ ] Primary navigation and content are reachable
- [ ] Primary commerce action is reachable
- [ ] No blocking overlap or unintended horizontal overflow
- [ ] Console/network baseline captured

## Interaction

- [ ] Primary success path tested
- [ ] Loading, empty, disabled, unavailable, and error states tested as applicable
- [ ] Rapid/repeated input tested where races are plausible
- [ ] Refresh, resize, back/forward, and restoration tested where relevant
- [ ] Mouse, keyboard, touch, drag, or swipe tested as applicable
- [ ] Focus, escape, outside click, overlay, and scroll lock tested for layered UI

## Responsive

- [ ] Desktop tested
- [ ] Tablet tested or explicitly excluded
- [ ] Mobile tested
- [ ] Relevant breakpoint edge tested
- [ ] Text, media, controls, fixed/sticky UI, and overlays fit

## Shopify Lifecycle

- [ ] Cart and bundled section rendering tested when relevant
- [ ] Theme Editor lifecycle tested or marked unavailable
- [ ] Multiple section/component instances tested when plausible
- [ ] App blocks or third-party dependencies classified
- [ ] Reduced-motion functionality tested when hidden/revealed content exists

## Evidence

- [ ] Every finding has reproducible steps, expected, actual, frequency, and impact
- [ ] Screenshots, selectors, console, network, or DOM evidence attached where available
- [ ] First-party failures separated from third-party noise
- [ ] Likely file/component ownership labeled as confirmed or inferred
- [ ] `NOT TESTED`, `BLOCKED`, and `NOT APPLICABLE` are not reported as PASS

## Release Gate

- [ ] P0/P1 findings listed separately from P2
- [ ] Untested critical scope is explicit
- [ ] Gate is PASS, PASS WITH RISKS, NEEDS FIX, or BLOCKED
- [ ] Gate rationale matches evidence
- [ ] Implementation owner and regression scenarios named
- [ ] No files, Shopify settings, products, themes, or content were modified
