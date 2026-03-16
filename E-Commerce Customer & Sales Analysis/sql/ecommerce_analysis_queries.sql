--Total Revenue
SELECT SUM(payment_value) AS total_revenue
FROM order_payments;

--Total Orders
SELECT COUNT(DISTINCT order_id)
FROM orders;

--Top Product Categories
SELECT product_category_name,
SUM(price) AS total_sales
FROM order_items
GROUP BY product_category_name
ORDER BY total_sales DESC;

--Customers by State
SELECT customer_state,
COUNT(customer_id) AS total_customers
FROM customers
GROUP BY customer_state
ORDER BY total_customers DESC;

--Monthly Order Trend
SELECT DATE_TRUNC('month', order_purchase_timestamp) AS month,
COUNT(order_id) AS total_orders
FROM orders
GROUP BY month
ORDER BY month;