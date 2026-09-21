# 🛒 E-Commerce Business Data Analysis

## 📊 Project Overview

This project analyzes an e-commerce dataset to understand sales performance, product trends, customer behavior, payment preferences, and geographic demand.

The project uses **SQL and Python** to perform data extraction, data cleaning, exploratory data analysis (EDA), business analysis, and data visualization.

---

## 🎯 Objectives

- Analyze revenue and sales performance
- Identify monthly revenue trends
- Find top-performing product categories
- Analyze customer distribution by state
- Understand payment method preferences
- Identify top products and sellers
- Analyze customer purchasing behavior
- Calculate average order value
- Analyze repeat customers
- Study delivery performance
- Perform correlation analysis between price, freight, and payment value

---

## 🛠️ Tools & Technologies

- **MySQL** – SQL queries, joins, aggregations, and analysis
- **Python** – Data cleaning and exploratory data analysis
- **Pandas** – Data manipulation
- **NumPy** – Numerical analysis
- **Matplotlib** – Data visualization
- **Seaborn** – Statistical visualization
- **Jupyter Notebook** – Analysis and documentation

---

## 📂 Dataset

The dataset contains e-commerce transaction information including:

- Orders
- Customers
- Products
- Sellers
- Order Items
- Order Payments
- Customer Locations
- Payment Methods
- Product Prices
- Freight Costs
- Order Dates
- Delivery Dates

After data cleaning and filtering, the analysis focuses on delivered orders.

---

## 📈 Key Metrics

| Metric | Value |
|---|---:|
| Total Revenue | ~$19.5M |
| Total Orders | ~95K |
| Average Order Value | ~$172 |

---

## 🔎 SQL Analysis

The project includes SQL analysis for:

- Total revenue
- Total orders
- Average order value
- Monthly revenue
- Top product categories
- Top states by orders
- Top states by revenue
- Payment method analysis
- Top sellers
- Top products
- Top customers
- Running total revenue
- Month-over-month revenue growth
- Customer order frequency
- Average delivery time
- Repeat customer analysis

### SQL Concepts Used

- `SELECT`
- `WHERE`
- `GROUP BY`
- `ORDER BY`
- `JOIN`
- `INNER JOIN`
- Aggregate Functions
- `CASE`
- `RANK()`
- `DENSE_RANK()`
- `LAG()`
- Window Functions
- CTEs
- Date Functions

---

## 🐍 Python Analysis

Python was used for data preprocessing and exploratory data analysis.

### Data Cleaning

- Checked missing values
- Checked duplicate records
- Converted date columns
- Created monthly features
- Filtered required order records
- Prepared data for analysis

### Exploratory Data Analysis

The analysis covers:

- Monthly revenue trends
- Product category performance
- State-wise orders
- State-wise revenue
- Payment method distribution
- Customer purchasing behavior
- Seller performance
- Product price analysis
- Freight cost analysis
- Delivery time analysis

---

## 📊 Data Visualization

The project uses Python visualizations to identify business trends and patterns.

Visualizations include:

- Line charts
- Bar charts
- Count plots
- Scatter plots
- Correlation heatmaps
- Distribution plots

---

## 💡 Key Insights

- Total revenue exceeded **$19M**.
- Average order value was approximately **$172**.
- **São Paulo** generated the highest number of orders and revenue.
- Credit Card was the dominant payment method.
- Several home, lifestyle, health, and beauty categories contributed significantly to revenue.
- Monthly revenue showed variations across the analyzed period.
- Customer order frequency was analyzed to identify repeat customers.
- Product price, freight cost, and payment value were analyzed for their relationships.

---

## 📁 Project Structure

```text
ecommerce-data-analysis/
│
├── data/
│   ├── raw/
│   └── processed/
│       ├── ecommerce_master.csv
│       └── ecommerce_final.csv
│
├── sql/
│   └── analysis_queries.sql
│
├── notebooks/
│   └── ecommerce_analysis.ipynb
│
├── images/
│   └── analysis.png
│
└── README.md
