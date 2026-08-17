# QA Method

## Test Contract

Every QA run must establish:

1. Target environment
2. Scope and excluded surfaces
3. Expected behavior
4. Test data and state
5. Device/browser matrix
6. Evidence standard
7. Release-gate rule

## Evidence Levels

- Strong: reproducible interaction plus screenshot/video, console/network evidence, or exact DOM state.
- Moderate: reproducible visual/functional observation without diagnostic evidence.
- Weak: one-time observation, inferred ownership, or incomplete environment.

Use confidence separately from severity. A high-impact suspected defect with weak evidence is not a confirmed P0; report the uncertainty and gather more evidence when safe.

## Coverage States

- `PASS`: executed and met expected behavior.
- `FAIL`: executed and reproducibly violated expected behavior.
- `NOT TESTED`: outside scope, inaccessible, or missing data.
- `BLOCKED`: attempted but environment or prerequisite prevented completion.
- `NOT APPLICABLE`: the surface or state does not exist on the target.

Never collapse `NOT TESTED` into `PASS`.

## Reproduction Standard

Include:

- Clean starting URL and state
- Authentication/cart/variant prerequisites
- Exact actions in order
- Viewport and input method
- Expected and actual results
- Frequency, such as `5/5` or `2/5`
- Evidence identifier or screenshot reference

For race conditions, repeat at least five times when safe and record the final state after rapid input.

## Baseline Versus Regression

Call a defect a regression only when a known-good baseline, prior version, change set, or comparison theme proves the previous behavior. Otherwise call it a defect or observation.

## Test Ordering

1. Non-mutating smoke checks
2. Primary interaction path
3. Alternate and error states
4. Rapid/repeated input
5. Resize, refresh, history, and restoration
6. Theme Editor lifecycle
7. Cross-device confirmation

Reset state between tests when one test can contaminate another.

## Evidence Hygiene

- Record store/theme/URL before screenshots.
- Avoid exposing customer, order, token, or personal data.
- Separate third-party console noise from first-party failures.
- Preserve the original error text but summarize repetitive duplicates.
- Do not claim a likely file as confirmed without source evidence.
