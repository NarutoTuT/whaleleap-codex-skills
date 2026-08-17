# Evidence and Prioritization

## Evidence Labels

- `MANUAL`: reproduced through direct interaction or inspection.
- `AUTOMATED`: tool-detected and manually validated.
- `FIELD`: production real-user measurement.
- `LAB`: controlled synthetic measurement or trace.
- `CODE`: read-only source evidence.
- `INFERRED`: plausible root cause not yet isolated.
- `NOT TESTED`: in scope but no evidence.
- `BLOCKED`: access, data or tooling prevented testing.

## Finding Record

For every material finding capture:

- title and priority
- audit mode
- page, state, viewport and environment
- evidence label and artifact
- WCAG criterion or performance metric
- affected users
- frequency and business impact
- root cause and confidence
- requirement and implementation owner
- acceptance test

## Priority Tests

Ask:

1. Does it block discovery, understanding, selection, purchase or support?
2. Which users and devices are affected?
3. Is it global, template-wide or isolated?
4. Is the evidence field-based, reproducible or inferred?
5. Does it regress a contractual quality gate or known baseline?
6. Is there a usable alternative?

## Gate Integrity

- A missing field dataset is not a performance pass.
- A clean automated scan is not an accessibility pass.
- One successful viewport is not responsive conformance.
- One fast lab run is not a stable baseline.
- A third-party owner does not make the user impact lower.
- An untestable criterion must remain explicit.
