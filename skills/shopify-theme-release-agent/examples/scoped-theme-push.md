# Scoped Theme Push Example

## Request

Push the three approved search files to unpublished theme ID `123456789`; preserve every other remote file.

## Plan

- Action: `PUSH`
- Store: exact canonical domain
- Target: theme ID `123456789`, unpublished
- Include: three explicit paths
- Exclude: all other local changes
- Deletion: none
- Drift: compare the three remote files only
- Rollback: temporary remote copies plus local Git commit

If target, scope and validation were already reviewed and the user says "push it", execute without a duplicate confirmation. Verify by reading back the three files and return `PUSHED` only when they match.
