# Customer Shopping Behavior Analysis
### End-to-end analytics | Python · PostgreSQL · Power BI

> A retail analytics case study exploring shopping patterns, product preferences, customer segments, discount usage, shipping choices, and subscription behavior.

![Python](https://img.shields.io/badge/Python-Pandas-3776AB?logo=python&logoColor=white)
![SQL](https://img.shields.io/badge/SQL-PostgreSQL-4169E1?logo=postgresql&logoColor=white)
![BI](https://img.shields.io/badge/Visualization-Power%20BI-F2C811?logo=powerbi&logoColor=111111)

## Overview

This project analyzes **3,900 purchase records across 18 columns** to explore customer shopping behavior and translate the findings into business questions for retail stakeholders. The documented workflow combines data preparation in Python, analytical querying in PostgreSQL, and visual reporting in Power BI.

The supplied report records **37 missing values in `review_rating`**, handled by imputing the median rating within each product category.

## Business questions explored

1. How does revenue compare across customer genders?
2. Which discount users spend above the overall average purchase amount?
3. Which five products have the highest average review ratings?
4. How do average purchase amounts compare between Standard and Express shipping?
5. How do subscriber and non-subscriber average spend and total revenue compare?
6. Which products have the highest share of discounted purchases?
7. How can customers be segmented into New, Returning, and Loyal groups using purchase history?
8. What are the top three most-purchased products in each category?
9. Are customers with more than five purchases more likely to subscribe?
10. How much revenue does each age group contribute?

## Workflow

```text
Shopping data → Python/pandas preparation → PostgreSQL analysis → Power BI reporting → business recommendations
```

## Tools and skills demonstrated

| Area | Techniques |
|---|---|
| Python | pandas, dataset inspection, missing-value handling, column standardization, feature engineering |
| SQL | PostgreSQL, aggregations, conditional analysis, customer segmentation, purchase-behavior analysis |
| Data preparation | Median imputation by product category, age-group creation, redundancy check |
| Power BI | Dashboarding and visual communication |
| Business analysis | Retention, promotion, product positioning, and targeting recommendations |

## Dataset profile

| Attribute | Description |
|---|---|
| Records | 3,900 purchases |
| Columns | 18 source columns |
| Customer profile | Age, gender, location, subscription status |
| Purchase details | Item, category, purchase amount, season, size, color |
| Shopping behavior | Discount/promo usage, previous purchases, purchase frequency, rating, shipping type |
| Missing data reported | 37 values in review rating |

## Business recommendations

- **Grow subscriptions:** communicate subscriber benefits and test targeted offers.
- **Build loyalty:** reward repeat purchases and encourage movement into higher-loyalty segments.
- **Review discount effectiveness:** balance purchase volume against margin impact.
- **Promote strong products:** use ratings and purchase popularity to inform campaigns.
- **Target thoughtfully:** use age-group revenue contribution and shipping preferences to guide campaign hypotheses.

These recommendations are documented in the supplied report. Validate them against margin, campaign, and customer-level evidence before operational rollout.

## Project documentation

- [Project methodology and workflow](docs/PROJECT_METHODOLOGY.md)
- [PDF report and Power BI dashboard artifacts](https://github.com/nihaalmohd/Customer-Trends-Data-Analysis-Python-SQL-Power-BI) — the two original binary files were supplied separately and still need to be committed to the repository under `assets/`; use the upload instructions in the provided asset package.

## Dashboard quality review

A structural review found several chart-title issues and checked summary metrics against the supplied CSV. See [`docs/DASHBOARD_REVIEW.md`](docs/DASHBOARD_REVIEW.md) for the corrected labels, verified dataset figures, and final Power BI Desktop validation checklist. The reviewed PBIX copy is prepared locally, but still needs to be uploaded to `assets/` after it is opened and validated in Power BI Desktop.

## Reproducibility and next improvements

The supplied PDF summarizes the workflow and SQL business questions, but it does not include the original executable Python scripts, SQL statements, exact table schema, DAX measures, or Power Query steps. To make the project fully reproducible:

1. Add the original Python notebook/script and PostgreSQL query file.
2. Add the PDF report and `.pbix` dashboard to `assets/`.
3. Add dashboard screenshots and a data dictionary.
4. Document dataset provenance and license before redistributing raw data.
5. Validate all numerical insights against the underlying data before publishing quantified claims.

## Author

**Mohammad Nihaal** · Data Analytics Portfolio · Python · SQL · Power BI

*Portfolio case study focused on analytical workflow, business-question framing, and dashboard communication.*
