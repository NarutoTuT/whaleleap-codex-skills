# Pull, Push and Publish

## Pull

Before pulling:

- confirm source store and theme ID
- decide between temporary inspection, selected-file pull and full pull
- inspect local dirty state
- identify files that may be overwritten or removed
- capture a local rollback point

Default to a temporary directory for comparison. Pull into the working tree only when overwrite effects are understood and approved. Report all resulting local changes.

## Push to Existing Theme

Before pushing:

- confirm destination theme ID and role
- use an exact file allowlist for a scoped change
- identify exclusions and deletion behavior
- validate local files
- inspect scoped remote drift
- capture target and rollback evidence

Do not publish after push unless publication was separately requested and authorized.

## Push as New Unpublished Theme

Confirm:

- creation is intentional
- the theme name is unique enough to identify
- whether the push is full or scoped
- the expected preview and QA workflow

After creation, record the new theme ID and role. A created theme without a resolved ID is a partial result.

## Publish

Publishing requires:

- exact store and theme ID
- evidence that the candidate role and content are correct
- explicit live publication authorization
- prior live theme ID/name as rollback target
- launch or QA evidence required by the user's workflow

After publication, verify both the new live role and the prior live theme's resulting role. Publishing does not replace post-release storefront smoke testing.

## Version-Sensitive CLI Syntax

Inspect installed Shopify CLI help or current official documentation before constructing commands. Use supported exact-target and include/exclude options. Do not hardcode remembered flags when the installed version can be checked cheaply.
