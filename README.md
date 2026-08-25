# 🛒 Zepto Inventory Intelligence

## 📌 Project Overview

This project focuses on analyzing Zepto's product and inventory data to generate meaningful business insights. The workflow includes data cleaning using SQL, followed by analytical query execution and report creation using Power BI.

The objective is to identify patterns in stock availability, pricing, and discount strategies to support better business decisions.


## ⚙️ Tech Stack

* 🗄️ **SQL (MySQL Workbench)** – Data cleaning & analysis
* 📊 **Power BI** – Report creation & visualization
* 📁 **CSV Files** – Raw and processed datasets


## 📂 Dataset Details

* **Raw Dataset:** `zepto.csv`
* **Cleaned Dataset:** `zepto_cleaned_dataset.csv`

### Includes:

* 🛍️ Product categories
* 💰 Pricing & discounts
* 📦 Inventory levels
* ✅ Stock availability


## 🧹 Data Cleaning (SQL)

Data cleaning was performed directly in SQL to ensure efficiency and accuracy.

### Key Steps:

* Converted price values from paise to rupees
* Handled missing values
* Standardized category names
* Cleaned discount percentage values
* Checked for duplicates


## 📊 SQL Analysis

A total of **8 business-focused SQL queries** were written.

### Analysis Areas:

* Inventory value by category
* Stockout rate by category
* Urgent restocking identification
* Average stock depth vs target
* Product distribution by price tier
* Stockout probability by discount level
* Top promotional categories
* Marketing value (savings) by category


## 📈 Power BI Report

The Power BI report presents SQL query results in a structured visual format.

> ⚠️ Note: This is a **report**, not a fully interactive dashboard (no slicers/filters).

### Report Highlights:

* 📌 **Inventory Value by Category** (Treemap)
* 📌 **Stockout Rate (%) by Category** (Bar Chart)
* 📌 **Urgent Restocking List** (Table)
* 📌 **Avg. Stock Depth vs. Target** (Gauge Chart)
* 📌 **Product Distribution by Price Tier** (Donut Chart)
* 📌 **Stockout Probability by Discount Level** (Bar Chart)
* 📌 **Top Promotional Categories (Avg Discount)** (Bar Chart)
* 📌 **Marketing Value: Savings per Category** (Area/Line Chart)


## 🔍 Key Insights

* 📉 Some categories show consistently high stockout rates
* 💡 Discounts do not always reduce stockout risk
* 📊 Mid-range products dominate inventory distribution
* ⚠️ Certain categories require urgent restocking


## 🚀 Business Impact

* Improves inventory planning 📦
* Identifies high-risk stockouts ⚠️
* Supports discount strategy decisions 💰
* Enables data-driven insights 📊


## 📁 Project Structure

```
├── zepto.csv
├── zepto_cleaned_dataset.csv
├── zepto_cleaning_and_analysis.sql
├── zepto_analytics_report.pbix
└── README.md
```



## 📜 License

This project is licensed under the **MIT License**.
You are free to use, modify, and distribute this project with proper attribution.


## 🙌 Acknowledgements

* Zepto dataset used for analysis (for learning purposes)
* Power BI for visualization capabilities
* MySQL Workbench for data processing and analysis


## ✅ Conclusion

This project demonstrates a complete data analysis workflow:

* Data cleaning using SQL
* Business analysis using queries
* Insight presentation using Power BI

It reflects practical skills required for a Data Analyst role.

---

💡 *If you like this project, feel free to ⭐ the repository and share your feedback!*
