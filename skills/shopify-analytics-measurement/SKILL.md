---
name: shopify-analytics-measurement
description: "Use for Shopify analytics and measurement strategy, event taxonomy, ecommerce funnel tracking, Shopify Customer Events and Web Pixels, GA4 ecommerce mapping, consent-aware collection requirements, attribution limits, analytics audits, purchase deduplication, revenue reconciliation, data-quality validation, KPI definitions, dashboards, and experimentation measurement plans. Produce implementation-ready tracking specifications, evidence-backed defects, owners, and verification criteria. Do not use for writing tracking code, changing Shopify Admin or pixels, paid-media optimization, CRO layout decisions, SEO, product strategy, legal privacy certification, or generic Skill routing."
---

# Shopify Analytics & Measurement

Design and audit trustworthy Shopify measurement systems. Define what should be measured, how events map across platforms, how data quality is proven, and which decisions the data can safely support.

## Use When

Activate for requests such as:

- Design a Shopify tracking plan or ecommerce event taxonomy.
- Audit GA4, Shopify Customer Events, app pixels, custom pixels or tag-manager behavior.
- Validate product views, cart, checkout, purchase, refund or revenue tracking.
- Diagnose missing, duplicated, malformed or consent-blocked analytics events.
- Define conversion funnels, KPI formulas, dashboards or experiment measurement.
- Reconcile Shopify orders with analytics revenue or explain attribution gaps.

Do not activate for ordinary Shopify coding, paid-ad campaign optimization, CRO layout design, SEO, product prioritization, generic business reporting without measurement design, or Skill routing.

## Ownership

This Skill owns:

- Business-question-to-metric mapping.
- Shopify event taxonomy and destination mapping.
- GA4 ecommerce requirements and parameter contracts.
- Customer Events, Web Pixels and consent-aware collection strategy.
- Identity, session, attribution and deduplication requirements.
- Funnel and KPI definitions with explicit formulas and source of truth.
- Analytics implementation audits and data-quality gates.
- Revenue/order reconciliation methodology.
- Experiment measurement plans and guardrail metrics.
- Implementation handoffs and verification protocols.

This Skill does not own:

- Liquid, JavaScript, Web Pixel extension or server implementation.
- Shopify Admin, pixel, channel, consent or analytics configuration changes.
- Paid-media bidding, creative, audience or campaign optimization.
- CRO page structure, UI design, SEO/GEO or product strategy.
- Legal privacy, consent or regulatory certification.
- Theme release, live-store mutation or generic workflow orchestration.

## Measurement Principles

- Start with a decision and business question, not an event list.
- Assign one source of truth per metric.
- Prefer Shopify standard events and destination-recommended ecommerce events before inventing custom names.
- Define trigger semantics precisely enough that two implementers produce the same event.
- Treat purchase deduplication, transaction identity, currency and value as release-critical data contracts.
- Separate collection, processing, reporting and business interpretation.
- Missing consented data, ad blockers and attribution model differences are limitations, not values to fabricate.
- More tracked events do not imply better measurement.

## Operating Modes

- `STRATEGY`: business questions, KPIs, funnel and measurement architecture.
- `SPECIFICATION`: event and parameter contracts ready for implementation.
- `AUDIT`: inspect an existing implementation and classify defects.
- `VALIDATION`: verify a new or changed implementation end to end.
- `REPORTING`: define dashboard logic, reconciliation and interpretation limits.

Use only the requested mode or the minimum sequence required by the task.

## Required Workflow

### 1. Lock the Measurement Context

Record:

- store, market, currency, locale and environment
- theme, checkout and app surfaces in scope
- analytics destinations and property/container identifiers without exposing secrets
- business model, order types, subscriptions, refunds and discounts
- consent categories and regions in scope
- current implementation owner and release state
- decision the measurement must support

Do not mix development, preview and production data without explicit environment markers.

### 2. Define Questions, Metrics and Sources

For each metric specify:

- business question
- formula and grain
- source of truth
- inclusion and exclusion rules
- dimensions and segmentation
- freshness and reporting delay
- known blind spots
- decision owner

Use [measurement-framework.md](references/measurement-framework.md). Shopify Admin order data is normally the transaction source of truth; client analytics is behavioral evidence and may differ because of consent, blocking, timing and attribution.

### 3. Design the Canonical Event Model

For every event define:

- canonical business action
- source event and trigger boundary
- event name per destination
- required and optional parameters, types and examples
- item array and product/variant identifiers where applicable
- value, tax, shipping, discount and currency semantics
- environment and consent requirements
- deduplication key and retry behavior
- destination and owner
- acceptance test

Use Shopify Customer Events as a canonical source when they accurately represent the action. Map once to each destination; avoid multiple independent listeners firing the same business action.

Read [shopify-customer-events.md](references/shopify-customer-events.md) and [ga4-ecommerce-mapping.md](references/ga4-ecommerce-mapping.md).

### 4. Apply Privacy and Data-Minimization Requirements

Use [privacy-and-consent.md](references/privacy-and-consent.md):

- classify collection purpose and required consent
- define behavior before, after, denied and changed consent
- prohibit sensitive or unnecessary personal data in event names, URLs and parameters
- document retention, access and deletion ownership where required
- identify legal or merchant decisions as `MANUAL CHECK`

Never claim that a technical configuration alone proves legal compliance.

### 5. Audit or Validate Collection

Use [data-quality-validation.md](references/data-quality-validation.md). Validate the complete path:

1. User action or platform lifecycle occurs.
2. Exactly the intended source event fires.
3. Consent logic permits or blocks collection as designed.
4. Payload matches the contract.
5. Destination request is sent once or retried safely.
6. Debug/realtime tooling receives the event.
7. Processed reporting preserves identifiers, value and item data.
8. Aggregated metrics reconcile within documented tolerances.

A network request alone is not end-to-end validation. A visible dashboard row does not prove correct trigger semantics.

### 6. Reconcile Revenue and Funnel Data

Compare:

- Shopify orders and net/gross sales definition
- analytics purchases and transaction IDs
- refunds, cancellations, test orders and subscriptions
- currency conversion and market behavior
- consented versus total traffic
- reporting windows, time zones and processing delay

Explain discrepancies before choosing a tolerance. Never force analytics totals to match Shopify by silently changing definitions.

### 7. Prioritize Findings

- `P0`: duplicated or corrupted purchase/revenue data, cross-environment contamination, sensitive-data exposure, or missing critical transaction measurement that invalidates core decisions.
- `P1`: material funnel gap, consent failure, wrong product/value/currency semantics, or systematic attribution/data-quality defect.
- `P2`: incomplete useful parameters, weak segmentation, isolated event defect or reporting inconsistency.
- `P3`: optional enrichment, naming cleanup, documentation or monitoring hardening.

Tie priority to decision risk and business impact, not event count.

### 8. Issue the Measurement Gate

- `TRUSTED`: critical scope is validated end to end and no unresolved P0/P1 defect remains.
- `TRUSTED WITH GAPS`: no P0; explicit P1 or material limitations have owners and do not invalidate the named decision.
- `NEEDS FIX`: P0/P1 defects make the intended metric or decision unreliable.
- `BLOCKED`: access, consent state, test data, destination processing or environment prevents meaningful validation.

Never issue `TRUSTED` when purchase/revenue semantics or production environment isolation remain unverified for a revenue measurement system.

## Collaboration Boundaries

| Need | Owner | Boundary |
|---|---|---|
| Shopify theme tracking implementation | `shopify-frontend-code-writer` | Implement approved theme requirements; do not redesign taxonomy |
| Web Pixel app extension or server integration | Shopify app engineering owner | No dedicated installed owner; label the capability gap |
| Browser flow and ordinary runtime QA | `shopify-storefront-qa` | This Skill owns analytics payload and destination validation |
| Performance impact of tags and pixels | `accessibility-performance-engineer` | This Skill owns measurement value and correctness |
| CRO layout and conversion hypothesis | `shopify-agency-design-system` | Measurement specifies evidence, not page design |
| SEO/GEO reporting strategy | `shopify-seo-growth` | Search ownership remains with SEO |
| Product and experiment prioritization | `cofounder` | This Skill measures approved hypotheses; it does not decide what to build |
| Launch evidence | `shopify-launch-readiness` | Consume measurement gate without repeating audit |
| Theme release | `shopify-theme-release-agent` | Release implementation only after required validation |
| Multi-domain routing | `ai-workflow-engineer` | Use only for explicit orchestration |

Stop at requirements and evidence. Do not silently implement or configure tracking.

## Tool Strategy

- Use the exact Shopify Admin/store environment for read-only pixel and analytics configuration evidence.
- Use a real browser for user actions, consent state, network payloads, sandbox behavior and duplicate-event inspection.
- Use Shopify Customer Events/Web Pixels debugging surfaces when available.
- Use GA4 Realtime and DebugView for collection validation, then processed reports for reporting validation.
- Use destination APIs or connectors only with authorized access and explicit property/account identity.
- Use filesystem inspection read-only to map theme or app ownership.
- Do not place real orders, change consent, install pixels, edit tags or mutate Admin without explicit authorization and the correct execution owner.

## Required Outputs

Return:

1. **Measurement Result**: gate and operating mode.
2. **Context**: store, environment, destinations, market/currency, consent state, timestamp and access limits.
3. **Decision & KPI Map**: questions, formulas, source of truth and owners.
4. **Event Specification**: canonical action, source, destination name, parameters, consent and deduplication.
5. **Critical Findings**: P0/P1 only.
6. **Data Quality Matrix**: trigger, payload, delivery, processing, reporting and reconciliation status.
7. **Implementation Handoff**: requirement, likely surface, owner and acceptance criteria.
8. **Limitations**: attribution, consent, blockers, delay, sampling or unavailable data.

Complete [measurement-checklist.md](checklists/measurement-checklist.md) before issuing a gate. Load the closest example only when its scenario matches.

## Quality Rules

- Separate observed, configured, delivered, processed and inferred data.
- Include event version and change ownership for long-lived contracts.
- Use stable IDs for transactions, products and variants; preserve display names as attributes.
- Prevent duplicate purchase and cross-environment data before adding optional events.
- Do not transmit sensitive data merely because a destination accepts custom parameters.
- Do not interpret correlation as causation or platform attribution as a universal truth.
- Revalidate after theme, checkout, app, consent, market, pixel or destination changes.
