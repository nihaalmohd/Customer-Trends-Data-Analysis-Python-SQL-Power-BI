# Dashboard QA Review — Customer Shopping Behavior

## Review status

**Do not present the current Power BI dashboard as final yet.** The supplied PBIX opens as a one-page report with 13 visual containers, but the layout metadata reveals a typo and repeated analyses. The dashboard has not been rendered in Power BI Desktop in this review, so visual alignment, interactions, and slicer behavior cannot be fully certified.

## Findings from the PBIX report layout

- One report page and 13 visual containers.
- A donut chart title contains the typo `Subscribtion`.
- Two charts cover sales by category / revenue by category, which may be redundant unless they deliberately communicate distinct measures.
- Two charts cover revenue by age group / sales by age group by age group, also potentially redundant.
- The visible KPI card query references number of customers, average purchase amount, and average review rating; a total revenue KPI is not evident in that card query.
- Slicers exist for subscription status, gender, category, and shipping type.
- The report uses an `AccessibleOrchid` theme, but visual quality and contrast still need to be checked in the Power BI Desktop canvas.

## Data validation against the uploaded CSV

The source CSV has 3,900 rows and 18 columns. There are no fully duplicated rows. The only missing field is `Review Rating`, with 37 missing values.

| Validation | Result from the uploaded CSV |
|---|---:|
| Total purchase amount | $233,081 |
| Mean purchase amount | $59.76 |
| Female purchase amount total | $75,191 |
| Male purchase amount total | $157,890 |
| Mean purchase amount — Express | $60.48 |
| Mean purchase amount — Standard | $58.46 |
| Mean purchase amount — subscribers | $59.49 |
| Mean purchase amount — non-subscribers | $59.87 |
| Revenue share — subscribers | 26.88% |
| Revenue share — non-subscribers | 73.12% |

## Important discrepancies in the supplied presentation

Some claims in the supplied slide deck do not match the uploaded CSV when calculated directly from the data:

- The slide saying female customers generate slightly higher total revenue is not supported by the raw totals: female $75,191 versus male $157,890.
- The slide stating express-shipping customers spend 12% more is not supported by the raw averages: Express $60.48 versus Standard $58.46, a difference of about 3.5%.
- The slide stating subscribers spend 68% more is not supported by the raw averages: subscribers $59.49 versus non-subscribers $59.87.
- The stated 45% subscriber revenue share is not supported by the uploaded data: the calculated share is 26.88%.

These differences may result from calculations or definitions not documented in the supplied materials. The numbers should be reconciled before publication.

## Recommended remediation

1. Reconcile the Power BI measures to the source CSV.
2. Correct the spelling of `Subscription`.
3. Keep only one category chart and one age-group chart unless the paired charts clearly measure different things.
4. Add a total purchase amount KPI and a clear transaction count.
5. Add a date/season slicer only if it provides meaningful analysis; the dataset has Season but no transaction date.
6. Label all measures with units and define revenue as the sum of `Purchase Amount (USD)`.
7. Test every slicer against every visual in Power BI Desktop.
8. Capture a clean dashboard screenshot and verify the PBIX opens before marking the deliverable complete.

## Limitation

This review inspects the PBIX package's report-layout metadata and independently calculates metrics from the uploaded CSV. It does not claim to have opened and interacted with the dashboard in Power BI Desktop. No changes have been made to the original PBIX file.
