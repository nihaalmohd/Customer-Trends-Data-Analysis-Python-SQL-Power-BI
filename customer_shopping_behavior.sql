SELECT * FROM customer LIMIT 20;

--How many purchase records are available for analysis?
SELECT COUNT(*) AS total_records
FROM customer;

-- The no.of unique customers
SELECT COUNT(DISTINCT "customer_id") AS unique_customers
FROM customer;

-- Finding Missing values from important columns
SELECT COUNT(*) FILTER (
        WHERE "review_rating" IS NULL
    ) AS missing_review_ratings,
    COUNT(*) FILTER (
        WHERE "purchase_amount" IS NULL
    ) AS missing_purchase_amounts,
    COUNT(*) FILTER (
        WHERE "age" IS NULL
    ) AS missing_ages
FROM customer;

--Finding overall sales performance
SELECT
    SUM("purchase_amount") AS total_revenue,
    AVG("purchase_amount") AS average_purchase_amount,
    MIN("purchase_amount") AS minimum_purchase_amount,
    MAX("purchase_amount") AS maximum_purchase_amount,
    COUNT(*) AS total_purchases
FROM customer;

--Customer distribution by gender
SELECT
    "gender",
    COUNT(*) AS purchase_records,
    SUM("purchase_amount") AS total_revenue,
    ROUND(
        AVG("purchase_amount")::numeric, 2
    ) AS average_purchase_amount
FROM customer
GROUP BY "gender"
ORDER BY total_revenue DESC;

--Revenue by product category (Aggregations)
SELECT
    "category",
    COUNT(*) AS total_purchases,
    SUM("purchase_amount") AS total_revenue,
    ROUND(
        AVG("purchase_amount")::numeric, 2
    ) AS average_purchase_amount
FROM customer
GROUP BY "category"
ORDER BY total_revenue DESC;

--Top 5 most purchased products
SELECT
    "item_purchased",
    COUNT(*) AS purchase_count,
    SUM("purchase_amount") AS total_revenue
FROM customer
GROUP BY "item_purchased"
ORDER BY purchase_count DESC, total_revenue DESC
LIMIT 5;

--Top 5 highest rated products
SELECT
    "item_purchased",
    ROUND(
        AVG("review_rating")::numeric, 2
    ) AS average_rating,
    COUNT("review_rating") AS rating_count
FROM customer
GROUP BY "item_purchased"
HAVING COUNT("review_rating") > 0
ORDER BY average_rating DESC, rating_count DESC
LIMIT 5;

--Comparison between Standard and Exprexx shipping
SELECT
    "shipping_type",
    COUNT(*) AS total_purchases,
    ROUND(
        AVG("purchase_amount")::numeric, 2
    ) AS average_purchase_amount,
    SUM("purchase_amount") AS total_revenue
FROM customer
GROUP BY "shipping_type"
ORDER BY average_purchase_amount DESC;

--Customers with subscription
SELECT
    "subscription_status",
    COUNT(*) AS customer_records,
    ROUND(
        AVG("purchase_amount")::numeric, 2
    ) AS average_purchase_amount,
    SUM("purchase_amount") AS total_revenue,
    ROUND(
        100.0 * COUNT(*) / SUM(COUNT(*)) OVER (), 2
    ) AS percentage_of_records
FROM customer
GROUP BY "subscription_status"
ORDER BY total_revenue DESC;

--Find discount users who spend above the overall average
SELECT
    customer_iD,
    gender,
    item_purchased,
    category,
    Purchase_amount
FROM customer
WHERE discount_applied = 'Yes'
  AND purchase_amount > (
      SELECT AVG(purchase_amount)
      FROM customer
  )
ORDER BY "purchase_amount" DESC;

--Percentage of discounted purchases by product
SELECT
    "item_purchased",
    COUNT(*) AS total_purchases,
    COUNT(*) FILTER (
        WHERE "discount_applied" = 'Yes'
    ) AS discounted_purchases,
    ROUND(
        100.0 * COUNT(*) FILTER (
            WHERE "discount_applied" = 'Yes'
        ) / NULLIF(COUNT(*), 0),
        2
    ) AS discount_percentage
FROM customer
GROUP BY "item_purchased"
ORDER BY discount_percentage DESC;

--Promo code usage and discount application
SELECT
    "discount_applied",
    COUNT(*) AS purchase_count,
    ROUND(
        AVG("purchase_amount")::numeric, 2
    ) AS average_purchase_amount
FROM customer
GROUP BY "discount_applied"
ORDER BY purchase_count DESC;

--Revenue by age group
SELECT
    CASE
        WHEN "age" < 25 THEN 'below 25'
        WHEN "age" < 35 THEN '25-34'
        WHEN "age" < 45 THEN '35-44'
        WHEN "age" < 55 THEN '45-54'
        ELSE '55+'
    END AS age_group,
    COUNT(*) AS purchase_count,
    SUM("purchase_amount") AS total_revenue,
    ROUND(
        AVG("purchase_amount")::numeric, 2
    ) AS average_purchase_amount
FROM customer
GROUP BY age
ORDER BY total_revenue DESC;

--Subscrition by gender
SELECT
    "gender",
    COUNT(*) AS total_records,
    COUNT(*) FILTER (
        WHERE "subscription_status" = 'Yes'
    ) AS subscribed_records,
    ROUND(
        100.0 * COUNT(*) FILTER (
            WHERE "subscription_status" = 'Yes'
        ) / NULLIF(COUNT(*), 0),
        2
    ) AS subscription_rate
FROM customer
GROUP BY "gender"
ORDER BY subscription_rate DESC;

--Spending by season
SELECT
    "season",
    COUNT(*) AS total_purchases,
    SUM("purchase_amount") AS total_revenue,
    ROUND(
        AVG("purchase_amount")::numeric, 2
    ) AS average_purchase_amount
FROM customer
GROUP BY "season"
ORDER BY total_revenue DESC;

--Most popular payment method
SELECT
    "payment_method",
    COUNT(*) AS purchase_count,
    SUM("purchase_amount") AS total_revenue,
    ROUND(
        100.0 * COUNT(*) / SUM(COUNT(*)) OVER (),
        2
    ) AS purchase_share_percentage
FROM customer
GROUP BY "payment_method"
ORDER BY purchase_count DESC;

--Average purchase amounts by shopping frequency
SELECT
    "frequency_of_purchases",
    COUNT(*) AS total_records,
    ROUND(
        AVG("purchase_amount")::numeric, 2
    ) AS average_purchase_amount,
    SUM("purchase_amount") AS total_revenue
FROM customer
GROUP BY "frequency_of_purchases"
ORDER BY average_purchase_amount DESC;

--Customers by high purchase history
SELECT
    "customer_id",
    "age",
    "gender",
    "previous_purchases",
    "subscription_status",
    "purchase_amount"
FROM customer
WHERE "previous_purchases" > 5
ORDER BY "previous_purchases" DESC,
         "purchase_amount" DESC;

--Segment customers by previous purchase amount
WITH customer_segments AS (
    SELECT
        "customer_id",
        "previous_purchases",
        "purchase_amount",
        CASE
            WHEN "previous_purchases" <= 1 THEN 'New'
            WHEN "previous_purchases" <= 10 THEN 'Returning'
            ELSE 'Loyal'
        END AS customer_segment
    FROM customer
)
SELECT
    customer_segment,
    COUNT(*) AS customer_records,
    ROUND(
        AVG("purchase_amount")::numeric, 2
    ) AS average_purchase_amount,
    SUM("purchase_amount") AS total_revenue
FROM customer_segments
GROUP BY customer_segment
ORDER BY total_revenue DESC;

--
































































































































































































































