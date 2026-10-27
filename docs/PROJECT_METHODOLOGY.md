# Project Methodology — Customer Shopping Behavior Analysis

This document captures the workflow described in the supplied project report.

## 1. Project objective

Analyze 3,900 purchase records to explore spending patterns, customer segments, product preferences, and subscription behavior.

## 2. Dataset summary

- Rows: 3,900
- Columns: 18
- Customer attributes: age, gender, location, subscription status
- Purchase attributes: item purchased, category, purchase amount, season, size, color
- Shopping behavior: discount applied, promo code used, previous purchases, purchase frequency, review rating, shipping type
- Missing values reported: 37 in `Review Rating`

## 3. Python data preparation

The report describes these preparation steps:

1. Load the dataset with pandas.
2. Inspect its structure with `info()` and summary statistics with `describe()`.
3. Impute missing `Review Rating` values using the median rating for the corresponding product category.
4. Standardize column names to snake_case.
5. Create an `age_group` feature by binning customer ages.
6. Create a `purchase_frequency_days` feature from purchase data.
7. Check whether `discount_applied` and `promo_code_used` are redundant; the report says `promo_code_used` was dropped.
8. Connect Python to PostgreSQL and load the cleaned DataFrame.

## 4. PostgreSQL business questions

The analysis covered:

1. Revenue by gender.
2. Discount users whose purchase amount is above the overall average.
3. Top five products by average review rating.
4. Average purchase amount by Standard versus Express shipping.
5. Average spend and total revenue for subscribers versus non-subscribers.
6. Five products with the highest percentage of discounted purchases.
7. Customer segmentation into New, Returning, and Loyal groups using purchase history.
8. Top three most-purchased products per category.
9. Whether customers with more than five purchases are more likely to subscribe.
10. Revenue contribution by age group.

The supplied report does not include the full SQL statements or exact table schema, so those are not reconstructed here.

## 5. Power BI

The report states that an interactive Power BI dashboard was created to present the analysis visually. The supplied PDF does not document the individual DAX measures, Power Query steps, or page-level visual specifications.

## 6. Recommendations documented in the report

- Promote subscriber benefits.
- Reward repeat buyers and encourage loyalty.
- Review discount policy to balance sales impact and margin control.
- Highlight top-rated and best-selling products in campaigns.
- Use age-group revenue and express-shipping preferences to inform targeted marketing.

## 7. Reproducibility checklist

To make the project independently reproducible, add the original Python preparation script/notebook, PostgreSQL SQL file, dataset source and license, and dashboard screenshots. Confirm that the public dataset can legally be redistributed before committing it to a public repository.
