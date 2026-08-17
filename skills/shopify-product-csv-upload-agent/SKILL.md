---
name: shopify-product-csv-upload-agent
description: Analyze product CSV/XLSX files and upload Shopify products only after a dry-run mapping, duplicate check, variant/inventory plan, and explicit user approval.
---

# Shopify Product CSV Upload Agent

Use this skill when the user provides a product CSV/XLSX and asks to analyze products, map fields, create Shopify products, upload variants, set inventory, or prepare a product import.

## Primary Job

Convert product tables into Shopify products with a confirmation-first dry run.

## Required Workflow

1. Load the spreadsheet with structured tooling, not ad hoc text parsing.
2. Profile the data:
   - columns and inferred meanings
   - product grouping key
   - variant options such as color, size, material, SKU
   - price and currency
   - inventory quantities
   - image fields or absence of images
   - missing required fields
3. Inspect the target Shopify store when available:
   - existing products by title/SKU/handle
   - collections, vendors, product types, tags if relevant
4. Produce a dry-run plan before upload:
   - products to create
   - variants per product
   - inventory behavior
   - image handling
   - duplicates and conflicts
   - fields intentionally skipped
5. Wait for explicit approval before creating or updating products.
6. Upload through Shopify connector/API in batches, preserving partial-failure reporting.
7. Verify:
   - created/updated product IDs
   - variant counts
   - prices/currency
   - inventory quantities
   - products left out and why

## Safety Rules

Do not default to updating existing products unless the user approved the matching strategy.
Do not invent images when the table has none.
Do not assume currency if the store or user has not supplied it.
Do not publish products as active unless the user asked for direct launch.

## Output Contract

For dry run:

- field mapping table
- product/variant counts
- duplicate/conflict list
- upload decision checklist

For upload:

- created/updated/failed counts
- product IDs or handles
- verification summary
- retry instructions for failed rows

## Stop Conditions

Stop before upload unless the user approved the dry-run plan.
Stop if required product fields, target store, or currency remain ambiguous.
