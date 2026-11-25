# Methodology

## 1. Data Preparation & Validation

Python was used to inspect, prepare, and validate the seven source datasets before analytical processing.

Key activities:
- Examined dataset structures, column types, record counts, and missing values.
- Checked duplicate records and key uniqueness.
- Validated customer, order, subscription, and date relationships.
- Reviewed important financial and behavioural fields for consistency.
- Prepared the datasets for loading into Snowflake.

**Tools:** Python, Pandas, Jupyter Notebook.

## 2. Analytical Approach

SQL in Snowflake was used to perform business-focused analysis across five key areas:

- **Customer Segmentation:** Applied RFM analysis to classify customers based on purchasing behaviour.
- **Cohort Analysis:** Evaluated customer retention patterns across acquisition cohorts.
- **Customer Profitability:** Examined revenue, contribution, CAC, LTV, and payback metrics.
- **Subscription Churn:** Analysed churn patterns across subscription tiers, regions, and recorded churn reasons.
- **Marketing Performance:** Compared acquisition channels using spending, customer acquisition, and conversion metrics.

**Tools:** Snowflake SQL.

## 3. Data Modelling

A dimensional data model was developed in Snowflake to support structured analytical queries and reporting.

The model consists of:

- **Dimension Tables:** Date, Customer, Region, and Channel.
- **Fact Tables:** Orders, Subscriptions, Marketing Spend, Customer Economics, and Customer Features.

Surrogate keys and relationships between dimensions and fact tables were established and validated to support consistent analysis across business areas.

**Tools:** Snowflake SQL.

## 4. Data Visualization & Reporting

Three interactive Tableau dashboards were developed to present the analytical results and support business decision-making.

The dashboards cover customer behaviour, retention, subscription churn, and profitability, enabling stakeholders to explore performance across relevant customer segments, acquisition channels, and regions.

**Tools:** Tableau.




