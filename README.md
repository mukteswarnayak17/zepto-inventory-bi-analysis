# 🛒 Zepto Analytics: SQL-Driven Business Insight Report

## 📌 Project Overview

This project focuses on analyzing Zepto's product and inventory data to generate meaningful business insights. The workflow includes data cleaning, SQL-based analysis, and report creation using Power BI.

The goal is to identify patterns in stock availability, discount strategies, and product distribution to support better decision-making.

---

## ⚙️ Tech Stack

* **SQL (MySQL Workbench)** – Data cleaning & analysis
* **Power BI** – Report creation & visualization
* **CSV Files** – Raw and cleaned datasets

---

## 📂 Dataset Details

* **Raw Dataset:** `zepto.csv` (uncleaned data)
* **Cleaned Dataset:** `zepto_cleaned_dataset.csv`

### Data includes:

* Product categories
* Pricing & discounts
* Inventory levels
* Stock availability

---

## 🧹 Data Cleaning (SQL)

Data cleaning was performed using SQL due to minimal but important inconsistencies.

### Key Cleaning Steps:

* Converted price values from paise to rupees
* Handled missing values
* Standardized category names
* Cleaned discount percentage values
* Checked for duplicates

---

## 📊 SQL Analysis

A total of **8 business-driven SQL queries** were written to extract insights.

### Key Analysis Areas:

1. Inventory value by category
2. Stockout rate by category
3. Identification of urgent restocking needs
4. Average stock depth vs target
5. Product distribution by price tier
6. Stockout probability by discount level
7. Top promotional categories based on average discount
8. Marketing value (savings) by category

---

## 📈 Power BI Report

The Power BI report presents the results of SQL queries in a structured and visual format.
(Note: This is a report, not a fully interactive dashboard, as it does not include slicers or filters.)

### Report Highlights:

* **Inventory Value by Category** (Treemap)
* **Stockout Rate (%) by Category** (Bar Chart)
* **Urgent Restocking List** (Table)
* **Avg. Stock Depth vs. Target** (Gauge Chart)
* **Product Distribution by Price Tier** (Donut Chart)
* **Stockout Probability by Discount Level** (Bar Chart)
* **Top Promotional Categories (Avg Discount)** (Bar Chart)
* **Marketing Value: Savings per Category** (Area/Line Chart)

---

## 🔍 Key Insights

* Categories like biscuits and beverages show higher stockout rates, indicating potential supply issues.
* Discount levels do not consistently reduce stockout probability.
* Mid-range products dominate the overall product distribution.
* Certain categories require immediate restocking due to low availability.

---

## 🚀 Business Impact

* Helps identify high-risk stockout categories
* Supports better inventory planning
* Improves discount strategy decisions
* Enables data-driven business insights

---

## 📁 Project Structure

```id="k2nq81"
├── zepto.csv
├── zepto_cleaned_dataset.csv
├── zepto_cleaning_and_analysis.sql
├── PowerBI_Report.pbix
└── README.md
```

---

## ✅ Conclusion

This project demonstrates an end-to-end data analysis workflow:

* Cleaning raw data using SQL
* Performing business analysis using queries
* Presenting insights through a structured Power BI report

It reflects practical skills required for a Data Analyst role.

---

## 📬 Future Improvements

* Add interactivity (slicers, filters) to convert report into a dashboard
* Use advanced SQL techniques (CTEs, window functions)
* Include KPI cards for better business storytelling

---
