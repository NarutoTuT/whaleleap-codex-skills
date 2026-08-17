# Launch Gate Framework

## Decision Order

1. Resolve the exact store, theme, domain, markets and launch mode.
2. Confirm that the critical customer and operator paths match the business model.
3. Evaluate transaction, identity, domain, legal-availability and operational blockers first.
4. Record missing evidence without assuming success.
5. Issue one gate and state the evidence timestamp.

## Gate Definitions

### GO

- No unresolved P0 or P1 findings.
- Critical store identity, domain, payment, shipping and checkout evidence is current.
- Required policies and support paths are accessible.
- Specialist QA required by the scope has passed.
- No critical manual approval is outstanding.

### CONDITIONAL GO

- No unresolved P0 finding.
- Every accepted P1 or manual check has a named decision owner, deadline and contingency.
- The remaining risk does not make the primary transaction or operating path unreliable.

### NO-GO

- At least one unresolved P0 exists.
- The wrong store, theme or domain may be released.
- Customers cannot complete the intended primary journey.
- Payment, shipping, checkout, critical policy availability or operational ownership is invalid.

### BLOCKED

- The target cannot be resolved.
- Required Admin or storefront access is unavailable.
- Critical evidence cannot be collected.
- Conflicting evidence prevents a defensible decision.

## Severity Tests

Ask:

1. Can the issue prevent a customer from discovering, buying, receiving or obtaining support?
2. Can it cause release to the wrong store, theme, domain or market?
3. Can it create material legal, payment, tax, inventory or fulfillment exposure?
4. Is there a tested contingency?
5. Can the issue be isolated and repaired after launch without customer harm?

Use P0 only when launch should stop. Use P1 for serious controlled risk. Keep optimization in P2 or P3.

## Conditional Acceptance Record

For each accepted risk record:

- finding
- business consequence
- evidence
- accepting owner
- expiry or deadline
- contingency
- verification owner

Silence is not acceptance.
