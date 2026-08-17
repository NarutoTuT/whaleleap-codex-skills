# Dependency Patterns

## Static Code Relationships

Search for:

- ES module, CommonJS, CSS, and dynamic imports
- Exported symbols and re-export barrels
- Function, class, method, hook, and component consumers
- Template renders, partials, slots, and server includes
- Registries, maps, dependency injection, and convention-based loading

Barrel exports can hide the real owner. Trace through the barrel to the defining module.

## DOM Contracts

Treat markup and JavaScript as connected when code uses:

- IDs, classes, data attributes, roles, names, and custom-element tags
- `querySelector`, `closest`, `matches`, delegated listeners, or MutationObserver
- `aria-controls`, `for`, URL hashes, and fragment targets
- CSS selectors that encode state such as `.is-open` or `[aria-expanded="true"]`

Record whether a selector is unique, scoped to a section, or global. A selector rename may affect Liquid, CSS, JavaScript, tests, and app integrations.

## Event Relationships

Map:

- Event name
- Dispatcher and listeners
- Payload shape
- Bubbling and composed behavior
- Registration timing
- Cleanup and duplicate-listener risk

Include browser, custom, framework, Shopify Theme Editor, and analytics events. String-based event contracts are dependencies even without imports.

## State Relationships

Trace reads and writes for:

- Component state and shared stores
- DOM attributes/classes used as state
- URL/query/hash/history
- cookies, localStorage, and sessionStorage
- global variables and singleton instances
- server/API response objects
- Shopify cart, customer, localization, settings, and metafields

Distinguish source of truth from derived state. Conflicting sources raise risk.

## Runtime and Dynamic Loading

Static search may miss:

- Computed import paths
- Liquid-generated handles and filenames
- JSON configuration registries
- Custom element discovery
- App-injected markup
- CMS or merchant-entered references
- API-provided HTML
- code loaded only at a breakpoint or interaction

Mark these as probable or possible until runtime evidence confirms them.

## Duplicate and Unused Logic

Duplicate logic is relevant when the proposed change would update one copy but not another. Compare behavior and data contracts, not only similar text.

Treat an unused file as a candidate only after checking:

- Static and dynamic imports
- Template and Liquid references
- Build entry points
- package scripts
- registries and glob imports
- tests and stories
- app or platform injection

Never recommend deletion from filename or zero static imports alone.

## Circular Dependencies

Report a cycle when it can affect:

- Module initialization order
- Partially initialized exports
- duplicated singleton state
- build splitting
- Theme Editor reinitialization
- test isolation

Show the shortest meaningful cycle and the predicted failure, not every cycle in the repository.
