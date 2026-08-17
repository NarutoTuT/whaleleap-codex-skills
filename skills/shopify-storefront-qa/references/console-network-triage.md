# Console And Network Triage

## Console Workflow

1. Clear or timestamp the console before the tested action when possible.
2. Reproduce the action once normally.
3. Capture first-party exceptions, unhandled rejections, failed assertions, and repeated listener errors.
4. Repeat to establish frequency.
5. Identify source URL, line, stack, component, selector, or event when exposed.

Classify:

- Blocking first-party error
- Non-blocking first-party warning
- Third-party/app error with visible impact
- Third-party noise without demonstrated storefront impact
- Browser deprecation or DevTools issue

Do not report raw console counts as severity. Five duplicate errors may be one defect.

## Network Workflow

Inspect requests tied to the tested action:

- Request URL and method
- Status or cancellation
- Request payload shape without exposing secrets
- Response type and relevant error
- Initiator
- Timing and duplicate requests
- Whether UI state matches the response

Shopify-relevant requests may include cart endpoints, predictive search, recommendations, localization, section rendering, account routes, and app proxies.

## Failure Patterns

- Request succeeds but DOM/state stays stale
- Request fails and loading state never clears
- Older response overwrites newer rapid input
- Duplicate listener produces duplicate requests
- DOM replacement removes event ownership
- Preview/app script fails but core path remains usable
- Cache or CDN serves content inconsistent with the target theme

## Reporting

Connect runtime evidence to a user action and visible effect:

`Action -> request/exception -> state or DOM failure -> user impact`

If there is no demonstrated impact, report the runtime issue separately and avoid inflating it to P0/P1.
