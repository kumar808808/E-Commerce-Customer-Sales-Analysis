E-Commerce Customer & Sales Analysis
Project Overview

This project analyzes e-commerce transaction data to understand customer purchasing behavior, product performance, and sales trends.

Using SQL, Python (Pandas), and Power BI, the project demonstrates how raw transactional data can be cleaned, analyzed, and transformed into meaningful business insights through data visualization and dashboarding.

The goal of the analysis is to help businesses identify top-performing products, customer regions, revenue trends, and payment behaviors.

Tools & Technologies
SQL (DuckDB)
Python (Pandas)
Data Cleaning & Exploration
Power BI
Dataset

The dataset contains multiple tables related to an e-commerce platform:

Customers
Orders
Products
Order Items
Payments

These tables were combined using SQL joins to perform comprehensive sales analysis.

Business Questions Answered

What is the total revenue generated from all orders?

How many total orders were placed?

Which product categories generate the highest revenue?

Which regions have the most customers?

What is the average order value?

What is the monthly order trend?

Which payment types are most commonly used?

SQL Queries
Total Revenue
SELECT SUM(payment_value) AS total_revenue
FROM order_payments;
Total Orders
SELECT COUNT(DISTINCT order_id) AS total_orders
FROM orders;
Top Product Categories by Revenue
SELECT 
product_category_name,
SUM(price) AS total_sales
FROM order_items
GROUP BY product_category_name
ORDER BY total_sales DESC
LIMIT 10;
Customers by State
SELECT 
customer_state,
COUNT(customer_id) AS total_customers
FROM customers
GROUP BY customer_state
ORDER BY total_customers DESC;
Monthly Order Trend
SELECT 
DATE_TRUNC('month', order_purchase_timestamp) AS order_month,
COUNT(order_id) AS total_orders
FROM orders
GROUP BY order_month
ORDER BY order_month;
Data Analysis Workflow

The project follows the standard data analyst workflow:

Data Loading
Data Cleaning using Pandas
Exploratory Data Analysis
SQL Aggregation & Business Queries
Power BI Dashboard Visualization
Key Insights

A few product categories contribute significantly to overall revenue.

Certain regions have a higher concentration of customers.

Order volumes follow clear monthly trends.

A small number of payment methods dominate the majority of transactions.

Dashboard Features

The interactive Power BI dashboard includes:

Total Revenue KPI
Total Orders KPI
Average Order Value
Monthly Sales Trend
Sales by Category
Customer Distribution by Region
Payment Method Distribution

Interactive filters allow users to explore the data by:

Region
Product Category
Payment Type
Year

Dashboard Preview


![Dashboard Preview](E-Commerce%20Customer%20%26%20Sales%20Analysis/image/dashboard_preview.png)
Skills Demonstrated
Data Cleaning using Pandas
SQL Joins & Aggregations
Customer Behavior Analysis
Business KPI Development
Data Visualization
Dashboard Design

Why This Project

This project demonstrates the end-to-end workflow of a data analyst, from data cleaning and SQL analysis to building an interactive Power BI dashboard for business decision-making.
