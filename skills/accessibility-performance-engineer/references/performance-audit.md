# Performance Audit

## Evidence Order

1. Field data segmented by device, page type and relevant time window.
2. Reproducible lab traces under documented conditions.
3. Resource waterfall, main-thread, rendering and coverage evidence.
4. Static code and theme ownership evidence.
5. Hypothesis requiring verification.

## LCP Decomposition

Identify:

- server response and redirect delay
- resource discovery delay
- resource load duration
- element render delay
- actual LCP element by page type and viewport

Check hero media, eager/lazy behavior, preload priority, responsive source size, CSS/JS visibility gates, fonts and late app content.

## INP Diagnosis

Identify the slow interaction and split latency into input delay, processing time and presentation delay. Inspect long tasks, event-handler work, duplicated listeners, synchronous layout, DOM size, third-party scripts and rendering cost.

Do not infer INP from TBT alone. TBT is a useful lab diagnostic, not field INP.

## CLS Diagnosis

Inspect unsized images/video, responsive media ratio changes, font swaps, banners, consent UI, app blocks, recommendation widgets, sticky headers and asynchronous cart or price updates. Record the shifting elements and layout-shift attribution.

## Shopify Root Causes

- render-blocking assets in `theme.liquid`
- large global bundles loaded on every template
- duplicate section initialization
- app embeds and pixels with low business value
- oversized images or incorrect Liquid image widths
- eager loading below-the-fold media
- excessive sections, blocks or generated DOM
- synchronous third-party libraries
- font families, weights and unscoped preload
- collection rendering and pagination strategy

## Performance Budgets

Define budgets per project and page type. Include Core Web Vitals targets plus relevant asset, request, JavaScript, long-task or interaction budgets. Do not copy a generic bundle limit without measuring the theme architecture and business requirement.

## Regression Method

- compare like-for-like URL, data, viewport, throttling and cache conditions
- run multiple lab samples and use a representative statistic
- annotate theme, app, media and analytics changes
- wait for sufficient field data before declaring production impact
- distinguish source deployment from edge/cache propagation and rendered behavior
