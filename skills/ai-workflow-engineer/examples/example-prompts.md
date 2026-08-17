# Example Prompts

## Should Activate

### 1. "Audit my installed Skills and design a migration plan."

Selected Skills: `ai-workflow-engineer` primary.
Execution order: audit -> ownership map -> migration phases -> validation gates.
Reasoning: explicit Skill architecture and migration request.

### 2. "Decide which Skills should handle a Shopify SEO landing-page project."

Selected Skills: `ai-workflow-engineer` primary; `shopify-seo-growth`, `shopify-agency-design-system`, and `shopify-frontend-code-writer` as distinct domain owners when all are required.
Execution order: SEO requirements -> CRO/page structure -> implementation -> `shopify-storefront-qa`.
Reasoning: explicit routing request across several domains.

### 3. "Design an MCP workflow that reads files, researches competitors, and produces implementation tickets."

Selected Skills: `ai-workflow-engineer` primary.
Execution order: tool class selection -> data flow -> ticket handoff format -> stop condition.
Reasoning: explicit MCP/tool workflow design.

### 4. "Turn this business objective into staged prompts for several coding agents."

Selected Skills: `ai-workflow-engineer` primary.
Execution order: decompose outcome -> assign owners -> write handoff prompts.
Reasoning: explicit multi-agent sequencing and prompt handoff request.

### 5. "Prevent duplicate work across UI, Shopify, SEO, and performance Skills."

Selected Skills: `ai-workflow-engineer` primary.
Execution order: ownership boundaries -> conflict risks -> minimal routing table.
Reasoning: explicit duplicate-execution prevention.

## Should Not Activate

### 6. "Write a Shopify Liquid section."

Selected Skill: `shopify-frontend-code-writer`.
Reasoning: one installed domain Skill can execute directly.

### 7. "Add a GSAP animation to a React component."

Selected Skill: `motion-interaction-engineer` for the motion specification when needed, then the relevant React implementation owner.
Reasoning: ordinary implementation; no orchestration requested.

### 8. "Audit a PDP for CRO issues."

Selected Skill: `shopify-agency-design-system` or relevant growth fallback.
Reasoning: domain audit, not meta-routing.

### 9. "Rewrite homepage copy."

Selected Skill: `humanizer` or `brand` depending on scope.
Reasoning: copywriting/brand task.

### 10. "Improve Core Web Vitals."

Selected Skill: `accessibility-performance-engineer` for diagnosis and requirements; `shopify-frontend-code-writer` only when implementation is explicitly requested.
Reasoning: the audit owner should identify field/lab evidence and root causes before the code owner changes the theme; `ai-workflow-engineer` is unnecessary unless sequencing is requested.

### 11. "Create a banner."

Selected Skill: `imagegen` for a raster banner asset. Add `brand` only when brand-system constraints must be established or checked.
Reasoning: no dedicated banner Skill is installed; use the smallest available visual-asset workflow.

### 12. "Build a shadcn pricing component."

Selected Skill: `ui-styling`.
Reasoning: one installed frontend UI Skill can execute.

### 13. "Review an SEO title and meta description."

Selected Skill: `shopify-seo-growth` for Shopify search requirements; `humanizer` only if natural-language refinement is also requested.
Reasoning: single-domain review, not orchestration.

### 14. "Analyze what a cart drawer refactor could break before coding."

Selected Skill: `code-impact-graph` directly.
Reasoning: pre-change impact analysis has one installed owner; no orchestration is required.

### 15. "Push these four files to the Terrawulf theme."

Selected Skill: `shopify-theme-release-agent` directly.
Reasoning: the release Agent owns store/theme confirmation, push safety, and post-push verification.

### 16. "Analyze this product CSV and upload it after I approve the mapping."

Selected Skill: `shopify-product-csv-upload-agent` directly.
Reasoning: the Agent already owns the complete dry-run and approval workflow.

### 17. "Plan a cart drawer refactor, implementation, QA, and live release."

Selected Skills: `ai-workflow-engineer` primary for sequencing; `code-impact-graph`, `shopify-frontend-code-writer`, `shopify-storefront-qa`, then `shopify-theme-release-agent`.
Execution order: impact analysis -> implementation -> QA -> explicit release authorization.
Reasoning: explicit end-to-end orchestration where order materially affects safety.

### 18. "Test the completed Shopify search page on desktop, tablet, and mobile. Do not change code."

Selected Skill: `shopify-storefront-qa` directly.
Reasoning: one installed QA owner can perform the browser regression and issue a release gate.

### 19. "Is this Shopify store ready to launch? Check payments, shipping, markets, policies, domain, storefront evidence, and give me a go/no-go decision."

Selected Skill: `shopify-launch-readiness` directly.
Reasoning: one installed owner coordinates cross-domain launch evidence and issues the final gate without changing the store.

### 20. "Plan the work from prelaunch audit through blocker fixes, regression QA, and theme publication."

Selected Skills: `ai-workflow-engineer` primary for sequencing; `shopify-launch-readiness`, only required domain owners, `shopify-storefront-qa`, then `shopify-theme-release-agent`.
Execution order: readiness audit -> targeted remediation -> regression QA -> refreshed gate -> explicit release authorization.
Reasoning: this is an explicit multi-owner workflow where gate and release order materially affect safety.

### 21. "Audit this Shopify PDP against WCAG 2.2 and Core Web Vitals. Do not change code."

Selected Skill: `accessibility-performance-engineer` directly.
Reasoning: one installed owner can run the standards and performance audit, issue evidence-backed requirements, and stop before implementation.

### 22. "Audit why GA4 records duplicate Shopify purchases and define the correct event contract. Do not change pixels."

Selected Skill: `shopify-analytics-measurement` directly.
Reasoning: one installed owner can validate trigger, consent, payload, delivery, processing and transaction reconciliation without implementing or configuring tracking.
