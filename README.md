# 📊 DACA Portfolio — Jelena Iljina

**Program:** Data Analyst Career Accelerator (DACA)
**Participant:** Jelena Iljina
**Started:** 24.03.2026
**Completed:** 05.2026

---

## 👩‍💻 About

This repository documents my journey through the Data Analyst Career Accelerator program.
Each week I worked with real business data, solved practical problems and built
skills that are directly applicable in a real data analyst role.

---

## 📁 Projects Overview

### ✅ Week 0: Onboarding

- Created and configured my GitHub account and repository
- Connected to Supabase for the first time

---

### ✅ Week 1: SQL Basics

**What I worked on:**
- Explored UrbanStyle customer dataset for the first time
- Practiced writing SELECT queries to retrieve and filter data
- Learned how to sort results and limit output
- Used DISTINCT to find unique values
- Identified missing and inconsistent data entries

**What I discovered:**
- Out of 3,150 email addresses in the database, only 2,640 were unique —
  meaning 380 customer emails (12.1%) were either missing or duplicated
- The city column contained 54 different variations for just 12 actual cities
- **My recommendation:** enforce mandatory fields at data entry stage
  and standardize city name formatting to prevent future inconsistencies

---

### ✅ Week 2: Data Cleaning 

**What I worked on:**
- Developed a systematic approach to cleaning UrbanStyle sales and customer data
- Located and removed duplicate records from the dataset
- Handled NULL values and filled in missing information where possible
- Standardized text fields and date formats across the entire table
- Learned how to use transactions safely when modifying data

**What I discovered:**
- Found 5,116 duplicate rows — that is 33% of all records in the database
- 592 customers had registered accounts but had never made a single purchase
- 305 return entries had negative price values which indicated data entry errors
- After completing the full cleaning process, 10,118 records remained as reliable
- **Critical finding:** the actual revenue figure was 1.4M lower than
  what the raw uncleaned data had been showing

---

### ✅ Week 3: Joining Tables in SQL

**What I worked on:**
- Studied how relational databases are structured and why normalization matters
- Wrote JOIN queries to combine data from multiple tables at once
- Used table aliases to make complex queries easier to read
- Ran quality checks after each join to verify the results were correct

**What I discovered:**
- Men's clothing ranked first by number of sales transactions,
  but footwear actually generated more total revenue overall
- 12 products had zero sales recorded — they had never been purchased once
- **My recommendation:** conduct a full warehouse inventory check
  and review the ordering strategy for slow-moving products

---

### ✅ Week 4: Aggregation & KPIs in SQL

**What I worked on:**
- Used aggregate functions including COUNT, AVG, MIN and MAX
- Filtered and grouped data to break down results by category and time period
- Built CTE (Common Table Expressions) to simplify multi-step queries
- Applied window functions to calculate running totals and rankings
- Calculated real business KPIs from raw sales data

**What I discovered:**
- Men's clothing leads in transaction volume but footwear brings in more money
- Identified which product categories and locations drive the most value
- **My recommendation:** review stock levels for underperforming categories
  and consider targeted promotions based on category performance

---

### ✅ Week 5: Data Visualization & Dashboard Design

**What I worked on:**
- Learned how to choose the right chart type for each kind of data
- Designed KPI cards to highlight the most important numbers at a glance
- Applied the data-ink ratio principle — removing everything that does not
  add meaning to a chart
- Planned dashboard layouts with the end user experience in mind
- Studied color theory and how to make visuals accessible to all viewers
- Built a full UrbanStyle investor-facing dashboard from scratch

**What I discovered:**
- The Tallinn store produced the highest revenue: 1.1 million euros
- The online sales channel is growing steadily and reached 1.03 million euros
- Online is also bringing in the most new customers compared to physical stores
- However, new customer acquisition overall has dropped 4x compared to
  early 2023 — this is a serious signal that needs attention

---

### ✅ Week 6: Data Storytelling

**What I worked on:**
- Learned how to structure a data story using the framework:
  Setup — Conflict — Data — Solution — Action
- Practiced writing executive summaries for non-technical audiences
- Added annotations and reference lines to charts to guide the viewer's eye

**What I discovered:**
- Total revenue grew by +4% in 2024 compared to 2023 —
  but 29% of annual revenue is concentrated in just the summer months
- In January 2024, revenue dropped by 55% — a sharp and concerning decline
- **My recommendation:** run a winter campaign targeting spa visitors
  in October and January to reduce seasonal dependency
- Top 5 summer products have inventory levels that are 43x higher than
  actual sales — a major overstocking problem
- **My recommendation:** review purchasing volumes and reduce
  seasonal stock orders going forward

---

### ✅ Week 7: Python & RFM Analysis

**What I worked on:**
- Loaded and explored data using pandas DataFrames in Python
- Calculated RFM metrics: Recency, Frequency and Monetary value
- Segmented the customer base into meaningful groups based on behavior
- Visualized the results using Plotly to make findings easy to present

**What I discovered:**
- UrbanStyle has 2,540 customers and a total revenue of 2.7 million euros
- VIP customers make up only 18% of the entire customer base
  but are responsible for 43% of all revenue — a strong Pareto effect
- 531 customers (21% of the base) are classified as At Risk —
  winning them back could have a direct and measurable impact on revenue
- **Strategic focus:** retain VIP customers, re-engage At Risk customers,
  and develop Potential customers into loyal repeat buyers

---

### ✅ Week 8: ETL Pipeline & Automation

**What I worked on:**
- Learned the fundamentals of REST APIs and how to work with them
- Built a complete ETL pipeline — Extract, Transform, Load
- Implemented error handling and basic security practices
- Set up automation and scheduling for the pipeline to run independently

**What I discovered:**
- The automated pipeline I built saves approximately 4 hours
  of manual work every single week
- Data reliability improved to 99.8% after the pipeline was in place

---

### ✅ Week 9–10: Portfolio Defense & Career Preparation

**What I worked on:**
- Completed and presented my full portfolio to a professional panel
- Optimized my LinkedIn profile and CV for data analyst roles
- Studied the hiring process and developed my interview strategy
- Delivered a 5-minute investor pitch based on my analysis
- Combined all weekly projects into one complete end-to-end analysis
- Practiced presenting data stories clearly and confidently

---

## 🛠️ Skills I Built

### Technical Skills
| Area | What I learned |
|---|---|
| **SQL** | SELECT, JOIN, GROUP BY, CTEs, window functions, data cleaning |
| **Python** | pandas, plotly, RFM analysis, data transformation |
| **ETL** | Pipeline building, API integration, automation |
| **Visualization** | Dashboard design, storytelling, Power BI |
| **Version Control** | Git, GitHub |

### Analytical Skills
- ✅ Cleaning and validating real messy datasets
- ✅ Identifying critical business problems hidden in data
- ✅ Calculating and interpreting business KPIs
- ✅ Segmenting customers using behavioral data
- ✅ Building automated data pipelines
- ✅ Presenting findings clearly to both technical and non-technical audiences

---

## 💡 My Biggest Takeaway

> Before this program I did not realize how much a data analyst's work
> actually affects business decisions.
> Finding a 1.4M revenue discrepancy caused by duplicate records,
> or discovering that 21% of customers are at risk of being lost —
> these are not just numbers. They are real problems that real companies
> need real people to solve.
> That is what a data analyst does. And now I can do it.

---

## 📬 Contact

- **GitHub:** [github.com/jelena-iljina](https://github.com/jelena-iljina)
- **Email:** iljinaa008@gmail.com
