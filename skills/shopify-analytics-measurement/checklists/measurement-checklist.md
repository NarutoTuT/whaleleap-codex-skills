# Shopify Measurement Checklist

## Context

- [ ] Store, environment, destinations and property IDs confirmed
- [ ] Market, currency, timezone and consent scope confirmed
- [ ] Business decision and owner confirmed
- [ ] Source of truth defined for every primary KPI

## Event Contract

- [ ] Canonical source event defined
- [ ] Destination event name follows current recommendation
- [ ] Trigger boundary is deterministic
- [ ] Parameters, types and examples documented
- [ ] Product and variant ID strategy is consistent
- [ ] Value, tax, shipping, discount and currency semantics defined
- [ ] Consent and environment behavior defined
- [ ] Deduplication and retry behavior defined

## Validation

- [ ] Trigger reproduced
- [ ] Consent behavior verified
- [ ] Payload captured and compared with contract
- [ ] Duplicate paths checked
- [ ] Destination debug/realtime receipt verified
- [ ] Processed reporting verified
- [ ] Purchase/revenue reconciled at transaction level
- [ ] Refresh, retry, accelerated checkout and multi-market cases covered where applicable

## Governance

- [ ] Sensitive and unnecessary data excluded
- [ ] Event version and change owner recorded
- [ ] Monitoring and alert ownership defined
- [ ] Implementation owner is installed or capability gap is explicit
- [ ] Legal/privacy decisions remain manual
- [ ] Measurement gate reflects untested and blocked scope
