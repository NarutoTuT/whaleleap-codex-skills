# Commerce Configuration

## Store and Theme Identity

- Store name and `.myshopify.com` domain match the intended merchant.
- Target theme ID, name and role are explicit.
- Primary domain and redirect behavior match launch scope.
- Storefront password state is intentional.
- Launch markets and sales channels are explicit.

## Catalog

- Intended products are active and published to the correct channels.
- Draft, test and archived products are not unintentionally exposed.
- Variants, option names, SKUs, prices, compare-at prices and currency are coherent.
- Inventory policy, quantity and location ownership are known.
- Product media, titles, descriptions and essential attributes support purchase decisions.
- Collections, navigation and product links do not lead to empty or incorrect states.

## Markets and Localization

- Target markets are active.
- Currency and language behavior match each market.
- Market domains or subfolders resolve correctly.
- Localized navigation, product content and policies are available where required.
- Country restrictions and unavailable products fail clearly.

## Shipping and Delivery

- Fulfillment locations are active and assigned to inventory.
- Shipping zones cover intended launch addresses.
- Rates, thresholds, delivery estimates and free-shipping claims agree.
- Unsupported addresses fail clearly.
- Pickup, local delivery, duties and international delivery behavior are verified when applicable.

## Taxes and Duties

- Tax collection configuration has merchant or tax-owner confirmation.
- Price display conventions match target markets.
- Duties and import-tax handling are understood for cross-border sales.
- No audit result is represented as legal or tax advice.

## Payments and Checkout

- Intended payment providers are enabled in the correct mode.
- Test mode and live mode are not confused.
- Checkout accepts the intended contact, delivery and billing information.
- Accelerated payment methods are verified when in scope.
- Discounts, gift cards, subscriptions and selling plans work when in scope.
- Order confirmation and merchant notification evidence is available.

Placing an order or activating a provider is an external mutation and requires explicit authorization outside this Skill.
