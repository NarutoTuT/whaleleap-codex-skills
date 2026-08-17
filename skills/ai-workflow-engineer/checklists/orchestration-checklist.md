# Orchestration Checklist

Use before finalizing an `ai-workflow-engineer` response.

- [ ] Did the user explicitly request orchestration, routing, delegation, sequencing, MCP strategy, Skill architecture, or a handoff prompt?
- [ ] Can one installed Skill own the task?
- [ ] Am I adding unnecessary meta-planning?
- [ ] Is there one clear primary owner?
- [ ] Is the primary owner installed?
- [ ] Are any required owners missing and labeled as capability gaps?
- [ ] Is each supporting Skill necessary and distinct?
- [ ] Is the execution order justified?
- [ ] For risky code changes, is impact analysis included only when it materially reduces risk?
- [ ] For Shopify browser acceptance, is `shopify-storefront-qa` the QA owner without being asked to fix code?
- [ ] For complete WCAG or performance audits, is `accessibility-performance-engineer` the owner without duplicating ordinary storefront QA?
- [ ] For Shopify event contracts or analytics validation, is `shopify-analytics-measurement` the owner without asking it to implement pixels or decide product strategy?
- [ ] For Shopify go-live decisions, is `shopify-launch-readiness` the gate owner without duplicating specialist audits or executing changes?
- [ ] For Shopify release work, is `shopify-theme-release-agent` last and separately authorized?
- [ ] Am I duplicating confirmation gates already owned by a specialized Agent?
- [ ] Is there an explicit stop condition?
- [ ] Am I duplicating another Skill's analysis?
- [ ] Am I overriding system tool rules, connector rules, browser safety, filesystem permissions, or approval requirements?
- [ ] Can the routing output be shorter?
- [ ] If a domain Skill is already active and sufficient, did I avoid re-routing?
