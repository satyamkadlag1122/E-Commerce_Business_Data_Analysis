-- 1.Total Revenue of the E-commerce Store

SELECT 
ROUND(SUM(payment_value),2) AS total_revenue
FROM order_payments;

-- 2.Total Orders

SELECT COUNT(order_id) AS total_orders
FROM orders;

-- 3.Average Order Value

SELECT 
ROUND(SUM(payment_value)/COUNT(DISTINCT order_id),2) 
AS average_order_value
FROM order_payments;

-- 4.Monthly Sales Trend

SELECT
DATE_FORMAT(order_purchase_timestamp,'%Y-%m') AS order_month,
ROUND(SUM(payment_value),2) AS revenue
FROM orders o
JOIN order_payments p
ON o.order_id = p.order_id
GROUP BY order_month
ORDER BY order_month;

-- 5.Top 10 Product Categories by Revenue

SELECT
p.product_category_name,
ROUND(SUM(oi.price),2) AS revenue
FROM order_items oi
JOIN products p
ON oi.product_id = p.product_id
GROUP BY p.product_category_name
ORDER BY revenue DESC
LIMIT 10;

-- 6.Top States by Orders

SELECT
c.customer_state,
COUNT(o.order_id) AS total_orders
FROM customers c
JOIN orders o
ON c.customer_id = o.customer_id
GROUP BY c.customer_state
ORDER BY total_orders DESC;

-- 7.Most Used Payment Methods

SELECT
payment_type,
COUNT(*) AS total_payments
FROM order_payments
GROUP BY payment_type
ORDER BY total_payments DESC;

-- 8.Top Sellers by Revenue

SELECT
seller_id,
ROUND(SUM(price),2) AS revenue
FROM order_items
GROUP BY seller_id
ORDER BY revenue DESC
LIMIT 10;


------------------------------------
SELECT 
MIN(order_purchase_timestamp) AS first_order,
MAX(order_purchase_timestamp) AS last_order
FROM orders;
------------------------------------


-- 9.Running Total Revenue (How revenue accumulates over time.)

SELECT
DATE_FORMAT(o.order_purchase_timestamp,'%Y-%m') AS month,
SUM(p.payment_value) AS monthly_revenue,
SUM(SUM(p.payment_value)) OVER (ORDER BY DATE_FORMAT(o.order_purchase_timestamp,'%Y-%m')) 
AS running_total
FROM orders o
JOIN order_payments p
ON o.order_id = p.order_id
GROUP BY month
ORDER BY month;

-- 10. Top performing products

SELECT
product_id,
SUM(price) AS revenue,
RANK() OVER (ORDER BY SUM(price) DESC) AS product_rank
FROM order_items
GROUP BY product_id
LIMIT 10;

-- 11.Which sellers generate the most revenue

SELECT
seller_id,
SUM(price) AS total_sales,
DENSE_RANK() OVER (ORDER BY SUM(price) DESC) AS seller_rank
FROM order_items
GROUP BY seller_id
LIMIT 10;

-- 12.Top customers (VIP customers)

SELECT
customer_id,
SUM(payment_value) AS total_spent,
RANK() OVER (ORDER BY SUM(payment_value) DESC) AS customer_rank
FROM orders o
JOIN order_payments p
ON o.order_id = p.order_id
GROUP BY customer_id
LIMIT 10;

-- 13.Month-over-month revenue growth

SELECT
month,
revenue,
LAG(revenue) OVER (ORDER BY month) AS previous_month,
ROUND(
((revenue - LAG(revenue) OVER (ORDER BY month)) /
LAG(revenue) OVER (ORDER BY month)) * 100
,2) AS growth_rate
FROM
(
SELECT
DATE_FORMAT(o.order_purchase_timestamp,'%Y-%m') AS month,
SUM(p.payment_value) AS revenue
FROM orders o
JOIN order_payments p
ON o.order_id = p.order_id
GROUP BY month
) t;

-- 14.Logistics performance

SELECT
AVG(DATEDIFF(order_delivered_customer_date,
order_purchase_timestamp)) AS avg_delivery_days
FROM orders
WHERE order_delivered_customer_date IS NOT NULL;

-- 15.Orders Per Customer(Repeat customers)

SELECT
customer_id,
COUNT(order_id) AS total_orders,
RANK() OVER (ORDER BY COUNT(order_id) DESC) AS customer_rank
FROM orders
GROUP BY customer_id
LIMIT 10;











