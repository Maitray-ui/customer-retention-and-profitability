-- Project: Customer Retention & Profitability
-- Source: 01_raw_setup_and_validation.sql
-- Purpose: Inspect the Snowflake session and establish the project database/schemas.
-- Review the active role and warehouse before running account-level changes.

-- 1. Inspect the current Snowflake session
SELECT
    CURRENT_ACCOUNT() AS account,
    CURRENT_REGION() AS region,
    CURRENT_ROLE() AS active_role,
    CURRENT_WAREHOUSE() AS active_warehouse,
    CURRENT_DATABASE() AS active_database,
    CURRENT_SCHEMA() AS active_schema;

-- 2. Inspect and configure the warehouse
DESCRIBE WAREHOUSE COMPUTE_WH;

SHOW WAREHOUSES LIKE 'COMPUTE_WH';

-- Sets the warehouse to suspend after 60 seconds of inactivity.
ALTER WAREHOUSE COMPUTE_WH
    SET AUTO_SUSPEND = 60;

-- 3. Create and select the project database
CREATE DATABASE IF NOT EXISTS CUSTOMER_ANALYTICS;

SHOW DATABASES;

USE DATABASE CUSTOMER_ANALYTICS;

SELECT CURRENT_DATABASE();

-- 4. Create the project schemas
CREATE SCHEMA IF NOT EXISTS RAW;
CREATE SCHEMA IF NOT EXISTS STAGING;
CREATE SCHEMA IF NOT EXISTS ANALYTICS;

SHOW SCHEMAS IN DATABASE CUSTOMER_ANALYTICS;

-- The source script selected RAW before creating the file format and stage.
USE SCHEMA RAW;
