# Evidence and Ownership

## Evidence Strength

Prefer evidence in this order:

1. Direct current observation from the exact target store, theme, Admin surface or live journey.
2. Current specialist report containing environment, steps and artifacts.
3. Read-only configuration or API output tied to the exact target.
4. Named owner attestation with date and scope.
5. Inference from code or documentation.
6. Assumption.

Only levels 1-3 normally justify `PASS` for a critical technical check. Human-controlled legal, tax, payment and operational decisions may require level 4 and should retain `MANUAL CHECK` unless the audit scope defines acceptable attestation.

## Evidence Record

For each material check capture:

- environment and target identifier
- observed result
- source or artifact
- timestamp
- evidence level
- limitations
- responsible owner

## Ownership Rules

- Assign one accountable owner to every unresolved P0/P1 item.
- Separate the action owner from the verification owner when independence matters.
- Do not assign a Skill to approve legal, tax, payment-provider or merchant policy decisions.
- Do not assign implementation work to `shopify-launch-readiness`.
- If no installed Skill owns a task, mark the capability gap instead of stretching a neighboring Skill.

## Freshness

Recheck drift-prone evidence after material configuration, catalog, theme, app, domain or market changes. A past successful launch does not prove current readiness.
