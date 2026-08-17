# Code Impact Review Checklist

## Scope

- [ ] Proposed behavior is separated from assumed implementation.
- [ ] Repository root and relevant package/theme boundary are identified.
- [ ] Generated, vendor, and external code exclusions are stated when material.
- [ ] Analysis is bounded to the requested change.

## Relationships

- [ ] Definitions and direct consumers are traced.
- [ ] Upstream loaders/callers and downstream consumers are traced.
- [ ] Imports, renders/includes, calls, selectors, events, and state are checked as applicable.
- [ ] Dynamic loading, registries, generated names, and runtime injection are considered.
- [ ] Every important edge has concrete evidence.
- [ ] Confirmed, probable, and possible relationships are distinguished.

## Shopify

- [ ] Active layout and templates are traced.
- [ ] Sections, blocks, snippets, assets, config, and locales are checked as relevant.
- [ ] Schema type and setting IDs are treated as persisted contracts.
- [ ] Theme Editor load/unload/select/reorder lifecycle is considered.
- [ ] Cart bundled sections and DOM replacement are traced when relevant.
- [ ] App blocks, app embeds, metafields, markets, and localization are considered when present.

## Risk

- [ ] Overall risk includes a concrete propagation path and failure mode.
- [ ] Impact tiers discriminate among direct, indirect, low, and unknown effects.
- [ ] Confidence reflects runtime unknowns and repository completeness.
- [ ] Duplicate/dead/circular/naming findings are included only if change-relevant.
- [ ] Performance exposure is described without taking ownership of optimization.

## Safety

- [ ] Must-change, may-change, and must-not-change boundaries are explicit.
- [ ] Every Critical/High impact has a verification scenario.
- [ ] Relevant pages, viewports, interactions, lifecycle, and state variants are covered.
- [ ] Rollback points are concrete and ordered.
- [ ] Data/config changes include backward-compatibility considerations.

## Handoff

- [ ] Implementation owner is named.
- [ ] Required invariants are concise and testable.
- [ ] Open unknowns are explicit.
- [ ] No business code or unrelated remediation was produced.
- [ ] The analysis stops at impact prediction and handoff.
