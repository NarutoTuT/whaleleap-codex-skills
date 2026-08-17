---
name: shopify-launch-readiness
description: Use for read-only Shopify prelaunch, relaunch, migration, or handoff readiness audits that verify store configuration, catalog, markets, shipping, taxes, payments, checkout, domains, policies, customer accounts, analytics, SEO baseline, storefront evidence, and operational ownership. Produce evidence-backed blockers, owners, and a GO, CONDITIONAL GO, NO-GO, or BLOCKED gate. Do not use for code implementation, admin changes, full storefront regression QA, deep SEO audits, product imports, or theme push and publish operations.
---

# Shopify Launch Readiness

Audit whether a Shopify store is ready to transact and operate at launch. Coordinate evidence from specialist Skills without taking over their execution responsibilities or changing the store.

## Use When

Activate for requests such as:

- Is this Shopify store ready to launch?
- Run a prelaunch, relaunch, migration, or client handoff audit.
- Identify go-live blockers and assign owners.
- Verify launch-critical Shopify configuration across Admin and storefront surfaces.
- Produce a launch checklist, evidence matrix, or go/no-go decision.

Do not activate for ordinary Shopify coding, a single Admin setting change, pure storefront QA, pure SEO analysis, product import, visual design, or theme release execution.

## Ownership

This Skill owns:

- Launch scope and target identity.
- Cross-domain readiness evidence and status normalization.
- Launch-blocker severity and business impact.
- Ownership assignment and remediation sequencing.
- Residual-risk recording and explicit acceptance.
- Final launch gate.

This Skill does not own:

- Liquid, JavaScript, CSS, app, or theme implementation.
- Shopify Admin mutations, payment activation, test orders, or catalog updates.
- Full browser regression execution.
- Deep SEO, GEO, schema, accessibility, performance, CRO, or design audits.
- Theme pull, push, publish, rollback execution, or store launch.
- Legal, tax, privacy, or financial certification.
- Generic Skill routing outside this launch-readiness workflow.

## Readiness Workflow

### 1. Resolve the Launch Target

Record the exact store, primary domain, target theme and role, target markets, launch type, expected transaction path, launch date, and access limitations. Never issue a positive gate when the store or theme is ambiguous.

### 2. Build the Critical Path

Define the minimum successful customer and operator journey:

1. Discover the correct storefront.
2. Browse a valid product or collection.
3. Add an available variant to cart.
4. Reach checkout with valid shipping and payment options.
5. Receive order and notification evidence.
6. Fulfill, support, refund, and operate the order after launch.

Adapt the path for quote-only, B2B, subscription, digital, or non-transactional stores. Mark non-applicable checks explicitly.

### 3. Collect Evidence by Domain

Audit the domains in [commerce-configuration.md](references/commerce-configuration.md) and [domain-policy-operations.md](references/domain-policy-operations.md). Use [evidence-and-ownership.md](references/evidence-and-ownership.md) to distinguish direct evidence, specialist evidence, owner attestation, and unverified assumptions.

Do not reproduce an entire specialist audit. Request or consume its conclusion, evidence, open risks, and owner.

### 4. Classify Every Check

Use exactly one status:

- `PASS`: Direct, current evidence supports readiness.
- `FAIL`: Evidence confirms a readiness defect.
- `MANUAL CHECK`: A merchant, legal, tax, payment, or operations owner must verify it.
- `NOT APPLICABLE`: The launch scope excludes the check, with rationale.
- `NOT TESTED`: The check was in scope but not executed.
- `BLOCKED`: Required access, target resolution, data, or environment is unavailable.

Never convert `NOT TESTED`, `MANUAL CHECK`, or `BLOCKED` into `PASS`.

### 5. Assign Priority and Owner

- `P0`: Launch blocker affecting store access, transaction completion, critical identity, payment, shipping, domain, security, or required legal availability.
- `P1`: Serious launch risk affecting a primary journey, market, discoverability, customer trust, operations, or data quality.
- `P2`: Important follow-up that does not prevent a controlled launch.
- `P3`: Post-launch optimization.

For each issue report: evidence, impact, priority, action, owner, verification method, and rollback or contingency where relevant.

### 6. Issue the Gate

Use the decision rules in [launch-gate-framework.md](references/launch-gate-framework.md):

- `GO`: No unresolved P0/P1 items and all critical checks have current evidence.
- `CONDITIONAL GO`: No P0 items; accepted P1 or manual checks have named owners, deadlines, and contingencies.
- `NO-GO`: Any unresolved P0 or critical transaction, identity, domain, payment, shipping, checkout, or required policy failure.
- `BLOCKED`: Evidence is too incomplete to make a defensible decision.

Do not issue `GO` for a transactional launch while payment, shipping, checkout, domain, or target-store identity remains unverified.

## Delegation Rules

| Need | Owner | Handoff |
|---|---|---|
| Browser functional, responsive, runtime and visual regression | `shopify-storefront-qa` | Return pages, flows, viewports, environment and acceptance criteria |
| SEO, GEO, schema, Search Console or Merchant Center depth | `shopify-seo-growth` | Return finding scope and required launch evidence |
| Shopify Liquid, JavaScript or CSS fix | `shopify-frontend-code-writer` | Return requirement, affected behavior, acceptance criteria and risk |
| CRO structure or premium storefront design | `shopify-agency-design-system` | Return conversion problem and evidence; do not prescribe implementation |
| Theme pull, push, publish or release verification | `shopify-theme-release-agent` | Return exact store, theme, allowlist, gate result and release conditions |
| CSV/XLSX product import | `shopify-product-csv-upload-agent` | Return approved mapping, duplicate, variant and inventory requirements |
| Pre-change dependency and impact prediction | `code-impact-graph` | Return proposed change and suspected shared surfaces |
| Generic multi-Skill routing | `ai-workflow-engineer` | Use only when the request extends beyond launch readiness |
| Tax, legal, payment-provider or merchant policy approval | Human owner | Mark `MANUAL CHECK`; never certify on their behalf |

Do not delegate every domain automatically. Use the smallest set needed to close material evidence gaps.

## Tool Strategy

- Use Shopify Admin, a Shopify connector, or read-only CLI output for store configuration evidence.
- Use a real browser for domain, storefront, policy, account, cart and checkout reachability evidence.
- Use filesystem inspection for theme configuration and code evidence without editing files.
- Use current official Shopify documentation when platform behavior or requirements may have changed.
- Use external APIs only when authorized and needed for authoritative evidence.

Never mutate Admin settings, remove storefront passwords, activate payments, place orders, publish themes, or push files under this Skill. Those actions require an explicit request and the correct execution owner.

## Output Contract

Return:

1. **Launch Context**: store, theme, domain, markets, launch type, date, evidence timestamp and access limits.
2. **Executive Gate**: `GO`, `CONDITIONAL GO`, `NO-GO`, or `BLOCKED`, with concise reasoning.
3. **Critical Blockers**: P0 and P1 findings only.
4. **Readiness Matrix**: domain, check, status, evidence, priority and owner.
5. **Manual Decisions**: merchant, legal, tax, payment or operations confirmations still required.
6. **Remediation Sequence**: smallest ordered path to a defensible launch.
7. **Verification Plan**: exact retests and evidence needed to close each issue.
8. **Residual Risks**: accepted or untested risks, owner and deadline.

Use [shopify-launch-checklist.md](checklists/shopify-launch-checklist.md) for full coverage. The examples show expected reporting depth without pretending that sample evidence is real.

## Quality Rules

- Separate observed evidence, inference, owner attestation and assumption.
- Timestamp drift-prone Admin and storefront evidence.
- Keep launch blockers distinct from post-launch optimization.
- Avoid legal, tax, security, accessibility, or payment compliance claims without the proper owner and evidence.
- Never equate Theme Check, successful upload, app installation, or a visible storefront with launch readiness.
- Report what remains untested instead of filling gaps with generic best practices.
