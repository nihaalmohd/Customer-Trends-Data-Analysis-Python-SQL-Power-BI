# Customer Shopping Behavior Analysis
### End-to-end analytics | Python · PostgreSQL · Power BI

> A retail analytics case study exploring shopping patterns, product preferences, customer segments, discount usage, shipping choices, and subscription behavior.

![Python](https://img.shields.io/badge/Python-Pandas-3776AB?logo=python&logoColor=white)
![SQL](https://img.shields.io/badge/SQL-PostgreSQL-4169E1?logo=postgresql&logoColor=white)
![BI](https://img.shields.io/badge/Visualization-Power%20BI-F2C811?logo=powerbi&logoColor=111111)
![Status](https://img.shields.io/badge/Project-Completed-2ea44f)

## Overview

This project analyzes **3,900 purchase records across 18 columns** to explore customer shopping behavior and translate the findings into business questions for retail stakeholders. The workflow combines data preparation in Python, analytical querying in PostgreSQL, and visual reporting in Power BI.

The project report records **37 missing values in `review_rating`**, handled by imputing the median rating within each product category.

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
Raw shopping data
      ↓
Python / pandas
Inspect · clean · impute missing ratings · standardize column names
      ↓
Feature engineering
Age groups · purchase-frequency feature · redundancy check
      ↓
PostgreSQL
Load cleaned data · answer business questions with SQL
      ↓
Power BI
Interactive visual exploration and stakeholder reporting
      ↓
Recommendations
Subscriptions · loyalty · discount policy · product campaigns · targeting
```

## Tools and skills demonstrated

| Area | Techniques |
|---|---|
| Python | pandas, dataset inspection, missing-value handling, column standardization, feature engineering |
| SQL | PostgreSQL, aggregations, conditional analysis, ranking/segmentation questions, purchase-behavior analysis |
| Data preparation | Median imputation by product category, age-group creation, redundancy check |
| Power BI | Interactive dashboarding and visual communication |
| Business analysis | Translating analysis into retention, promotion, and targeting recommendations |

## Dataset profile

| Attribute | Description |
|---|---|
| Records | 3,900 purchases |
| Columns | 18 source columns |
| Customer profile | Age, gender, location, subscription status |
| Purchase details | Item, category, purchase amount, season, size, color |
| Shopping behavior | Discount/promo usage, previous purchases, purchase frequency, rating, shipping type |
| Missing data noted in report | 37 values in review rating |

The source report describes the dataset and its preparation. No raw dataset is included in this repository section unless separately added; do not assume customer-level data is present in the public repo.

## Business recommendations

- **Grow subscriptions:** communicate clear subscriber benefits and test targeted offers.
- **Build loyalty:** reward repeat purchases and encourage movement into higher-loyalty segments.
- **Review discount effectiveness:** balance conversion and purchase volume against margin impact.
- **Promote strong products:** use product ratings and purchase popularity to inform campaigns.
- **Target thoughtfully:** use age-group revenue contribution and shipping preferences to guide campaign hypotheses.

These are recommendations documented from the project report; they should be validated against margin, campaign, and customer-level evidence before operational rollout.

## Repository contents

- **Project report:** methodology, business questions, dashboard overview, and recommendations.
- **Power BI report:** interactive dashboard file.
- **SQL/Python assets:** analytical scripts and data-preparation code, where included.

## How to review the project

1. Start with the project report to understand the workflow and business questions.
2. Open the Power BI report in Power BI Desktop to explore the visuals and filters.
3. Review the SQL and Python assets to understand how the analysis was prepared and queried.

## Limitations and next improvements

- Add the executable Python notebook/script and PostgreSQL query file so the workflow is reproducible end-to-end.
- Document the exact DAX measures and Power Query transformations used in the dashboard.
- Add dashboard screenshots for quick viewing on GitHub without Power BI Desktop.
- Include a data dictionary and reproducible validation checks.
- Quantify business impact only after validating findings against the underlying data.

## Author

**Mohammad Nihaal**  
Data Analytics Portfolio · Python · SQL · Power BI

---

*Built as a portfolio case study to demonstrate analytical workflow, business-question framing, and dashboard communication. See the report and dashboard files in this repository for the project artifacts.*
