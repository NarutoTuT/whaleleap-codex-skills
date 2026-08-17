# Live Theme Publish Example

## Request

Publish the already verified candidate theme.

## Gate

Record:

- exact store
- candidate theme ID, name and unpublished role
- prior live theme ID and name
- QA and launch evidence required by the user's process
- explicit authorization to publish this candidate live
- rollback procedure

After publishing, refresh theme roles. Return `PUBLISHED` only when the candidate is confirmed live. Hand storefront smoke testing to `shopify-storefront-qa`; do not label the storefront passed from theme-role evidence alone.
