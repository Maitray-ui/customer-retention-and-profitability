# Data Model

## 1. Model Overview

The project uses a dimensional data model implemented in Snowflake to organise customer, transaction, subscription, and marketing data for analytical reporting.

The model is structured around **four dimension tables and five fact tables**.

- **Dimensions:** `DIM_CUSTOMER`, `DIM_DATE`, `DIM_REGION`, `DIM_CHANNEL`
- **Facts:** `FACT_ORDERS`, `FACT_SUBSCRIPTIONS`, `FACT_MARKETING_SPEND`, `FACT_CUSTOMER_ECONOMICS`, `FACT_CUSTOMER_FEATURES`

The fact tables store business measurements, while dimension tables provide the descriptive context required to analyse those measurements.


## 2. Dimension & Fact Tables

### Dimension Tables

| Table | Purpose |
|---|---|
| `DIM_CUSTOMER` | Stores customer attributes and acquisition information. |
| `DIM_DATE` | Provides calendar and fiscal date attributes. |
| `DIM_REGION` | Stores geographical region information. |
| `DIM_CHANNEL` | Stores customer acquisition channel information. |

### Fact Tables

| Table | Purpose |
|---|---|
| `FACT_ORDERS` | Stores order-level financial and transaction metrics. |
| `FACT_SUBSCRIPTIONS` | Stores subscription activity and related metrics. |
| `FACT_MARKETING_SPEND` | Stores marketing expenditure and campaign performance metrics. |
| `FACT_CUSTOMER_ECONOMICS` | Stores customer-level financial metrics such as CAC, LTV and contribution. |
| `FACT_CUSTOMER_FEATURES` | Stores customer purchasing and behavioural metrics. |

## 3. Table Relationships

The dimensional model connects fact tables to their corresponding dimensions through surrogate keys.

Key relationships include:

- `FACT_ORDERS` connects to customer, date, region, and channel dimensions.
- `FACT_SUBSCRIPTIONS` connects subscription activity to customer and date dimensions.
- `FACT_MARKETING_SPEND` connects marketing activity to date, region, and channel dimensions.
- `FACT_CUSTOMER_ECONOMICS` connects customer financial metrics to the customer dimension.
- `FACT_CUSTOMER_FEATURES` connects behavioural metrics to the customer dimension.

These relationships enable analysis across customer, time, geography, and acquisition channels while maintaining a consistent analytical structure.
