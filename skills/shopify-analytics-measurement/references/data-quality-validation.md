# Data Quality Validation

## Validation Matrix

| Layer | Question | Evidence |
|---|---|---|
| Trigger | Did the correct action occur? | Reproduction steps and source event |
| Consent | Was collection allowed or blocked correctly? | Privacy state and pixel lifecycle |
| Payload | Are names, types, IDs, items, value and currency correct? | Captured payload |
| Delivery | Was it sent exactly as intended? | Network/pixel debugger |
| Collection | Did the destination receive it? | Debug/realtime view |
| Processing | Were parameters retained and typed? | Processed reports/export |
| Reconciliation | Do aggregates align with the defined source? | Transaction/funnel comparison |

## Test Cases

- direct and collection product views
- variant changes and unavailable states
- add, remove, quantity change and cart drawer/page
- guest and returning customer
- checkout entry, progression and accelerated checkout
- successful, failed and abandoned checkout
- page refresh and browser history
- duplicate clicks and network retry
- discount, gift card, tax and shipping
- multiple currencies and markets
- test, cancelled and refunded orders
- consent grant, denial and change

Run only applicable cases and report exclusions.

## Reconciliation

Compare by stable transaction ID before aggregate totals. Classify differences:

- expected definition difference
- reporting delay
- consent/ad-blocking loss
- duplicate collection
- missing collection
- currency/timezone mismatch
- refund/cancellation treatment
- environment contamination
- unexplained

Do not hide unexplained residuals inside a broad tolerance.

## Monitoring

Recommend alerts for critical event disappearance, duplicate purchase rate, missing transaction IDs, invalid currency/value, sudden funnel discontinuity and development traffic in production properties. Define owner and response threshold.
