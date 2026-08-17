# Shopify Theme Map

## Theme Topology

Treat a Shopify theme as a runtime composition graph, not only an import graph.

```text
layout/theme.liquid
  -> content_for_header / global assets / app embeds
  -> template or JSON template
      -> section groups and sections
          -> blocks and snippets
              -> DOM contracts
                  -> assets, custom elements, events, APIs
```

Also trace:

- `config/settings_schema.json` -> merchant configuration surface
- `config/settings_data.json` -> active theme configuration; treat as environment-sensitive
- `locales/*.json` -> translation keys and locale-dependent content
- metafields/metaobjects -> runtime data contracts
- app blocks/app embeds -> externally owned behavior

## Directory Responsibilities

| Directory | Primary role | Typical impact risk |
| --- | --- | --- |
| `layout/` | Global document and asset lifecycle | High to Critical |
| `templates/` | Route composition and section ordering | Medium to High |
| `sections/` | Merchant-configurable feature boundaries | Medium to High |
| `snippets/` | Reused rendering fragments | Low to High by reach |
| `assets/` | Shared CSS, JS, media, component runtime | Low to Critical |
| `config/` | Theme capabilities and active settings | Medium to Critical |
| `locales/` | Translation contracts | Low to Medium |

## Shopify Relationship Patterns

Trace these non-import relationships:

- `{% render 'name' %}` and legacy include usage
- JSON template `type` values to section filenames
- Section presets, enabled templates, block types, and setting IDs
- Liquid-generated selectors, IDs, data attributes, and JSON script payloads
- Asset tags, dynamic asset URLs, module scripts, and deferred scripts
- Custom element names to `customElements.define`
- `Shopify.designMode` and `shopify:section:*` / `shopify:block:*` events
- Cart endpoints, `sections` parameters, section response keys, and DOM replacement targets
- Variant selection events and product-form consumers
- App blocks identified by `@app`

## Theme Editor Lifecycle

For section or block changes, evaluate:

1. Initial storefront load
2. Theme Editor section load after insertion or rerender
3. Section unload before removal
4. Section reorder
5. Block select and deselect
6. Reinitialization after HTML replacement
7. Duplicate listener and stale instance risk

A component that only initializes on `DOMContentLoaded` is at risk when its section can be injected by the Theme Editor.

## Cart Lifecycle

Trace the complete cycle:

1. Product form or cart control creates a request.
2. Request includes line data and optional section IDs/URLs.
3. Shopify returns cart JSON and/or rendered sections.
4. Cart owner updates shared state.
5. DOM regions are replaced.
6. Drawer, notification, icon bubble, live region, and recommendations react.
7. Focus, scroll lock, and accessibility state are restored.

Check error, empty-cart, quantity update, removal, selling plan, line properties, and rapid-action paths only when relevant.

## Risk Multipliers

Increase risk when a change touches:

- `theme.liquid` or global assets
- Shared snippet parameters or markup contracts
- Schema setting IDs already stored in merchant data
- Section IDs used in bundled section rendering
- Selectors shared by CSS and JavaScript
- Custom event names or payload shapes
- Cart response shape or DOM replacement order
- Theme Editor initialization and cleanup
- App-owned markup or externally injected nodes
- Locale, market, or currency assumptions

## Safe Analysis Boundary

Do not edit `settings_data.json` during ordinary implementation planning. Do not declare snippets or assets unused until dynamic Liquid references, JSON templates, app injection, and JavaScript registries have been checked.
