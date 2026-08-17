# Target and Drift Rules

## Target Identity

Record all available identifiers:

- canonical `.myshopify.com` store domain
- Admin URL only as supporting context
- local absolute theme path
- remote theme ID
- remote theme name
- remote theme role
- local Git branch and commit

When theme name and ID disagree, stop and resolve the mismatch. Do not use a preview URL from one theme as evidence for another.

## Local Scope

Classify local files as:

- approved release files
- related but excluded files
- unrelated user changes
- generated artifacts
- local deletions
- untracked files

For a scoped push, build an explicit allowlist. Do not release every modified file merely because it appears in `git status`.

## Remote Drift Check

Use one or more current evidence sources:

- fresh theme listing for identity and role
- remote readback of exact scoped files
- temporary pull of the target theme or selected files
- connector/API metadata tied to the exact theme ID

Never pull over the working directory merely to inspect drift. Use a temporary location unless the user explicitly authorized local overwrite.

## Drift Decision

| State | Meaning | Action |
|---|---|---|
| NONE | Remote scoped files match the known base | Continue |
| EXPECTED | Differences are intentional and included | Continue and record |
| CONFLICTING | Remote edits could be lost | Stop for merge or overwrite decision |
| UNKNOWN | Remote evidence unavailable | Stop for live or destructive targets; report risk for an isolated unpublished target |

## Deletion Semantics

Local absence is not proof that a remote file should be deleted. Preserve remote-only files by default. List every intended remote deletion and obtain explicit approval before executing it.
