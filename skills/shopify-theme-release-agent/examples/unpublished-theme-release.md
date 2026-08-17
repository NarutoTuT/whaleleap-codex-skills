# New Unpublished Theme Example

## Request

Upload the validated local theme as a new unpublished theme for client QA.

## Required Decisions

- exact store and local directory
- intentional new-theme creation
- full-theme versus scoped upload
- theme name
- deletion behavior is not applicable to an existing target

After upload, resolve the new theme ID and preview URL. Return `PARTIAL` if creation appears successful but the resulting ID or role cannot be verified. Do not publish it.
