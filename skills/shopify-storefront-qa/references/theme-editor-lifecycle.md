# Theme Editor Lifecycle

## Scope

Use when a section, block, app block, setting, or dynamically injected storefront component is changed or explicitly under QA.

## Required Lifecycle Checks

- Initial storefront load
- Theme Editor initial preview load
- Section add/load
- Section unload/remove
- Section reorder
- Setting update and section rerender
- Block add/remove/reorder
- Block select/deselect
- App block insertion when in scope
- Repeated edit cycles without page refresh

## Common Failures

- Component initializes only on `DOMContentLoaded`
- Duplicate event listeners after repeated section loads
- Stale observers, timers, sliders, or custom-element instances
- Missing cleanup on section unload
- Global selector binds to the wrong section instance
- Duplicate IDs across repeated sections or blocks
- Block selection does not reveal or focus its panel/slide
- Replaced HTML loses event ownership
- Schema setting exists but current template instance lacks a value
- Editor-only controls alter storefront layout

## Evidence

Record the exact editor action, section/block identity, repetition count, console output, and visible effect. Distinguish an editor-only failure from a live storefront failure.

## Boundary

Do not change settings permanently merely to test. Restore temporary editor state when safe and authorized. Do not save or publish the theme unless the user explicitly requests release through the release owner.
