-- Analytics Queries
-- Purpose: Business Intelligence and performance analysis

-- Total sales per project (Window Function)
SELECT
    project_id,
    sale_id,
    amount,
    SUM(amount) OVER (PARTITION BY project_id) AS total_project_sales
FROM Sales;

-- Rank projects by total sales
SELECT
    project_id,
    SUM(amount) AS total_sales,
    RANK() OVER (ORDER BY SUM(amount) DESC) AS sales_rank
FROM Sales
GROUP BY project_id;

-- Running total of sales over time
SELECT
    sale_id,
    issued_date,
    amount,
    SUM(amount) OVER (ORDER BY issued_date) AS running_total
FROM Sales;
