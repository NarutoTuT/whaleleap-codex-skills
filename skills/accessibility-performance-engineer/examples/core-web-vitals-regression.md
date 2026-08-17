# Core Web Vitals Regression Example

## Scenario

Mobile INP worsened after an app and theme update.

## Analysis Order

1. Confirm the field regression window and affected page types.
2. Compare like-for-like lab traces before and after when builds are available.
3. Reproduce the slow interaction.
4. Attribute input delay, handler work and presentation delay.
5. Separate app script, theme listener and rendering ownership.
6. Define the smallest remediation experiment.
7. Retest in lab, then monitor field p75 after sufficient traffic and reporting delay.

Do not blame the app from timing correlation alone. Report attribution confidence and preserve the original field evidence.
