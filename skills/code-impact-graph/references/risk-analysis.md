# Risk Analysis

## Scoring Dimensions

Score each dimension from 0 to 3:

| Dimension | 0 | 1 | 2 | 3 |
| --- | --- | --- | --- | --- |
| Reach | One isolated consumer | One feature | Several pages/components | Global or checkout-adjacent |
| Coupling | Explicit stable interface | Few direct dependencies | Implicit selectors/events | Many hidden/runtime contracts |
| Lifecycle | Static render | One initialization path | Async or rerender path | Multiple platform lifecycles |
| State | Stateless | Local state | Shared state | Persistent/server commerce state |
| Reversibility | Instant isolated rollback | Small file rollback | Coordinated rollback | Data/config/external dependency |
| Testability | Deterministic automated | Clear manual test | Environment-dependent | Hard-to-reproduce production path |

Use the score as a prompt for judgment, not an automatic verdict.

## Risk Levels

- Low: isolated impact, explicit contract, easy verification and rollback.
- Medium: bounded feature, indirect consumers or lifecycle edge cases.
- High: shared behavior, multiple surfaces, implicit contracts, or commerce state.
- Critical: global rendering, revenue-critical flow, destructive data/config change, or weakly observable failure across many surfaces.

## Impact Tiers

Classify affected nodes separately from overall risk:

- High impact: must be inspected or changed; direct contract or state owner.
- Medium impact: indirect consumer or lifecycle-dependent behavior requiring regression tests.
- Low impact: likely unaffected implementation but shares markup, setting, content, or presentation contract.
- Unknown: runtime relationship cannot be proven statically.

Do not label every nearby file High. A useful graph discriminates.

## Confidence

- High: direct references plus coherent lifecycle/data-flow evidence.
- Medium: strong static evidence with one unverified runtime condition.
- Low: dynamic behavior, external injection, missing environment, or incomplete repository.

Overall confidence cannot exceed the weakest assumption behind the primary risk claim.

## Failure-Mode Format

Write each major risk as:

`Change -> broken contract -> affected consumer -> user-visible or operational failure`

Example:

`Rename #CartDrawer -> renderContents cannot find replacement target -> bundled section HTML is not applied -> drawer shows stale cart after add-to-cart.`

## Verification Priority

- P0: revenue-critical, global, destructive, inaccessible, or unrecoverable paths.
- P1: primary feature paths and likely lifecycle variants.
- P2: secondary templates, presentation variants, and low-confidence edges.

Every Critical or High overall risk requires at least one P0 verification scenario.

## Rollback Design

Prefer small, ordered rollback points:

1. Baseline commit or patch snapshot
2. Contract-preserving internal change
3. Consumer migration
4. Old-contract removal

For schema, data, settings, or API changes, document backward compatibility and restoration. Avoid irreversible migrations in the same step as behavior changes.
