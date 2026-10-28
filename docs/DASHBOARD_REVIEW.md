# Power BI Dashboard Review

## Review outcome

The supplied Power BI report contains one page with 13 visual containers, four slicers, KPI cards, and category/age-group charts. The report structure was inspected from the PBIX package. This is a structural review; the report has not been opened and rendered in Power BI Desktop in this environment.

## Corrections made to the reviewed PBIX copy

- Corrected the misspelled subscription visual title to **Customer Subscription Status**.
- Changed **Sales by Category** to **Customers by Category**, matching the visual's customer-count field.
- Removed the repeated wording in **Sales by Age Group by Age Group**, renaming it **Customers by Age Group** to match the customer-count field.

The reviewed copy preserves the original report model and visual layout, changing only these chart-title strings.

## Dataset validation

The supplied CSV contains 3,900 rows and 18 columns. There are no fully duplicated rows. The only missing values are 37 entries in `Review Rating`.

Recalculated from the supplied CSV:

- Average purchase amount: approximately **$59.76**.
- Average review rating, excluding missing ratings: approximately **3.75**.
- Revenue by gender: **Female $75,191; Male $157,890**.
- Average purchase amount by shipping type: **Express $60.48; Standard $58.46**.
- Revenue share from subscribers: approximately **26.9%**.
- Average purchase amount by subscription status: **Subscribers $59.49; non-subscribers $59.87**.

These figures are calculated directly from the supplied CSV and should be used instead of unsupported claims in the accompanying presentation such as subscribers spending 68% more or contributing 45% of revenue.

## Before final publication

1. Open `Customer-Shopping-Behavior-Dashboard-Reviewed.pbix` in Power BI Desktop.
2. Confirm the data model loads and the visuals render correctly.
3. Test the Subscription Status, Gender, Category, and Shipping Type slicers.
4. Verify KPI card aggregation and currency/number formatting.
5. Save from Power BI Desktop and take a full-page dashboard screenshot for the repository README.

## Scope and limitations

This review corrected three visible chart-title issues and checked data-level summary figures. It did not rebuild the dashboard layout or verify rendering in Power BI Desktop. A full redesign would require visual review in Power BI Desktop and should not be claimed from package inspection alone.
