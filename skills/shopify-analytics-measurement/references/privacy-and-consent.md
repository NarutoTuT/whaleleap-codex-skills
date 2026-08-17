# Privacy and Consent

## Technical Scope

Define:

- collection purpose
- consent category
- behavior before consent
- behavior after grant, denial, revocation and update
- regional differences
- storage and identifier use
- destinations and data recipients
- merchant/legal owner

Shopify's Web Pixels APIs expose customer privacy state and consent updates. Verify current official behavior before implementation.

## Data Minimization

Do not include sensitive or unnecessary data in:

- event names
- URLs and query strings
- search terms when they may contain personal data
- form fields
- customer names, email, phone or address
- free-text values
- raw order notes
- persistent identifiers without approved purpose

Prefer stable commerce identifiers and controlled enumerations.

## Validation States

Test:

- first visit with no stored decision
- consent granted
- consent denied
- consent changed without full reload
- regional policy variation
- returning visitor
- app/custom pixel load behavior
- analytics destination behavior under blocked storage or tracking protection

## Boundary

This Skill can specify and test technical consent behavior. Legal basis, disclosure language, retention policy and regulatory applicability require the merchant's privacy or legal owner and remain `MANUAL CHECK`.
