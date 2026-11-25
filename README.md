# Customer Retention & Profitability Analysis

An end-to-end data analytics project investigating customer behaviour, retention, subscription churn, acquisition efficiency and customer profitability using a hybrid e-commerce and subscription business dataset.

## Business Problem

Customer acquisition and revenue growth do not necessarily translate into sustainable profitability.

The business has a customer base of more than 200,000 records but needs better visibility into:

- Which customer segments contribute the most revenue?
- How effectively does the business retain acquired customers?
- What are the major subscription cancellation drivers?
- Which acquisition channels generate stronger customer economics?
- Where should the business focus its retention and profitability initiatives?

**Core Objective:** Use data analytics to identify opportunities to improve customer retention, acquisition efficiency and profitability.

## Project Overview

The project follows an end-to-end analytical workflow, from raw data validation and preparation to SQL-based analysis, dimensional modelling and interactive Tableau dashboards.

### Technology Stack

| Technology | Application |
|---|---|
| Python (Pandas, Jupyter Notebook) | Data validation, profiling and cleaning |
| Snowflake SQL | Data transformation, analytical queries and data modelling |
| Snowflake | Cloud data warehouse |
| Tableau | Interactive dashboards and business reporting |
| Git & GitHub | Version control and project documentation |

## Data Overview

The project uses seven datasets covering the period 2021–2024.

| Dataset | Records | Description |
|---|---:|---|
| Customers | 204,227 | Customer profiles and acquisition details |
| Orders | 1,126,821 | Transaction-level purchase records |
| Customer Features | 204,227 | Customer behaviour and purchasing metrics |
| Customer Unit Economics | 204,227 | Customer-level financial metrics |
| Subscription History | 2,201,060 | Subscription periods, churn and reactivation |
| Marketing Spend | 960 | Marketing expenditure by channel and period |
| Date Dimension | 1,461 | Calendar and fiscal date attributes |

*Note: The dataset appears synthetic. The business model described in this project is an interpretation of the available data rather than a verified description of an actual company.*

## Analytical Workflow

### 1. Data Preparation and Validation
- Explored dataset structures, data types and distributions.
- Checked missing values, duplicate records and key uniqueness.
- Validated relationships between datasets.
- Investigated financial and behavioural data consistency.
- Prepared datasets for Snowflake analysis.

### 2. Data Warehousing and SQL
Implemented a structured Snowflake environment with separate layers:

- **RAW:** Source data storage.
- **STAGING:** Data preparation and validation.
- **ANALYTICS:** Business-focused analytical views.
- **MODEL:** Dimensional data model.

Applied SQL techniques including:
- CTEs and subqueries.
- Window functions.
- Aggregations and conditional logic.
- Joins and data validation.
- RFM segmentation.
- Cohort retention analysis.
- Customer profitability analysis.
- Subscription churn analysis.
- Acquisition channel performance analysis.

### 3. Dimensional Modelling

Designed a dimensional model containing:

- 4 dimension tables.
- 5 fact tables.

The model supports structured analysis of customer, order, subscription, marketing and financial data.

### 4. Tableau Dashboards

Developed three interactive dashboards:

1. **Executive Overview:** Customer segments, revenue and profitability performance.

   ![Executive Overview](tableau/dashboard_screenshots/Executive%20overview.png)
   
2. **Retention & Segmentation:** Cohort retention, customer segmentation and reactivation.

   ![Retention & Segmentation](tableau/dashboard_screenshots/Retention%20and%20segmentation.png)
   
3. **CLV & Acquisition:** Acquisition spend, customer economics, CAC and LTV analysis.

   ![CLV & Acquisition](tableau/dashboard_screenshots/CLV%20&%20Acquisition.png)


## Key Business Findings

### Customer Segmentation
- Champions represent approximately 17.1% of customers but contribute 62.7% of historical revenue.
- Champions and Loyal Customers together contribute approximately 91.1% of historical revenue.
- The At Risk segment contains approximately 50,407 customers.

### Customer Retention
- Month-three cohort retention is approximately 35.1%.
- Month-six cohort retention is approximately 26.0%.
- Organic and Referral cohorts demonstrate stronger early retention than Paid Ads cohorts.

### Acquisition Performance
- Paid Ads accounts for approximately 52.9% of acquisition spend.
- Organic acquisition has the lowest CAC at approximately $14.47.
- Organic and Referral demonstrate higher contribution per acquired customer than Paid Ads.

### Subscription Churn
- Basic subscriptions have a higher recorded churn rate than Premium subscriptions.
- Inactivity and Price account for approximately 64.9% of churn-flagged subscription records.
- Tier2 has the highest regional churn rate in the aggregate analysis.

*These findings are descriptive and do not establish causal relationships. Supplied LTV is a historical contribution-based metric, not a predictive customer lifetime value model.*

## Repository Structure

```text
customer-retention-and-profitability/
│
├── data/
│   ├── processed/
│   └── analytics/
│
├── python/
│   ├── data_exploration/
│   ├── data_validation/
│   └── data_cleaning/
│
├── snowflake/
│   ├── schema_design/
│   ├── data_loading/
│   ├── transformations/
│   ├── analytical_queries/
│   └── dimensional_modeling/
│
├── tableau/
│   ├── dashboard_screenshots/
│   └── workbook/
│
├── documentation/
│   ├── business_problem.md
│   ├── data_dictionary.md
│   ├── methodology.md
│   ├── data_model.md
│   └── business_recommendations.md
│
├── README.md
└── .gitignore
```

## Future Enhancements

- Statistical analysis and hypothesis testing using Python.
- Investigate relationships between customer behaviour and profitability.
- Develop predictive customer churn and lifetime value models.
- Extend customer profitability analysis with additional operating costs.

## Project Limitations

- The dataset appears synthetic and its real-world provenance has not been established.
- Historical customer value should not be interpreted as predictive lifetime value.
- Subscription churn and e-commerce purchase inactivity are treated as separate behaviours.
- Campaign-level attribution could not be established reliably.
- Statistical testing and predictive modelling have not yet been completed.

## Author

Data Analyst | SQL | Python | Snowflake | Tableau

[GitHub Profile](YOUR_GITHUB_PROFILE_LINK) | [LinkedIn Profile](YOUR_LINKEDIN_PROFILE_LINK)
