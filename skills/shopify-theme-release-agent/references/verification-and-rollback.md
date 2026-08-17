# Verification and Rollback

## Verification Layers

1. **Command layer**: exit status and CLI response.
2. **Theme layer**: resulting theme ID, name and role.
3. **File layer**: remote readback matches intended scoped files.
4. **Storefront layer**: preview or live behavior, delegated to `shopify-storefront-qa` when required.
5. **Launch layer**: business go-live gate, delegated to `shopify-launch-readiness`.

Do not report a higher layer as passed based only on a lower layer.

## Remote Readback

For material scoped pushes, pull or read back the exact released files into a temporary location and compare content. If platform caching affects rendered output, distinguish remote source verification from storefront rendering.

## Rollback Point

Before mutation, capture what applies:

- local Git commit and dirty-state snapshot
- backup copy or temporary pull of overwritten files
- destination theme ID and prior remote file state
- prior live theme ID, name and role
- release allowlist
- timestamp and command class

## Rollback Strategy

- Failed pull: restore local files from the recorded local rollback point.
- Bad scoped push: restore only the affected files from remote backup or known-good commit.
- Bad full-theme push: restore the known-good theme or repush the validated baseline.
- Bad publication: republish the recorded prior live theme, then verify roles and storefront state.

Rollback is a remote mutation and requires target resolution and explicit authorization. Do not perform it automatically because QA failed.

## Partial State

When a command times out, loses connection or reports mixed results:

1. Do not retry immediately.
2. Refresh the theme list and target role.
3. Read back the intended file scope.
4. Classify what changed remotely.
5. Resume only from the confirmed state.
