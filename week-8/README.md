# 🔄 Data Processing — transform.py

## Role
**Data Processing** — transforming raw data into clean, 
analysis-ready datasets with calculated KPIs and aggregates.

---

## 📋 Task Description

The goal of this module was to write transformation functions 
that clean the data, calculate weekly aggregates and KPIs, 
and merge datasets into one unified data pipeline.

The key requirement was to produce **visible, meaningful numbers** 
— not raw unprocessed data.

---

## 📥 Input
- Sales DataFrame (df_sales)
- Customer DataFrame (df_customers)  
- Product DataFrame (df_products)

All DataFrames were received from **Role A** (Data Collection).

---

## 📤 Output
- `transform.py` — containing 4 data transformation functions

---
Key Findings & Results
After applying the transformation pipeline, the following
insights were discovered:

Data Quality
Original dataset: 15,234 transactions
Problems found: 5,509 data issues
Duplicates
Missing customer information
Incorrect date formats
After cleaning: 10,118 reliable transactions remained
Critical Finding
⚠️ 5,116 duplicate entries had artificially inflated
revenue by +1.4M €, meaning the actual turnover
was 32% lower than initially reported.

Weekly Aggregates
Clear seasonal patterns were identified
December showed the highest spike: +54% growth
September showed the largest drop: −25% decline
