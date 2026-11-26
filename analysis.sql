-- ============================================================
-- StreamFlix SQL Analysis
-- Author: Mosa Ndlovu
-- Institution: Melsoft Academy
-- Project 1: SQL for Data Analysis
-- Database: SQLite
-- ============================================================

-- SECTION A: FOUNDATIONS

-- Q1: List all Premium users' names.

SELECT full_name
FROM users
WHERE plan = 'Premium';


-- Q2: Identify users whose age is missing.

SELECT full_name, age
FROM users
WHERE age IS NULL;


-- Q3: Calculate total monthly revenue from active users.

SELECT SUM(monthly_price) AS total_monthly_revenue
FROM users
WHERE is_active = 1;


-- Q4: Calculate the average show rating.
-- One show is excluded from the average because its rating is NULL.

SELECT ROUND(AVG(rating), 1) AS average_rating,
       COUNT(*) - COUNT(rating) AS missing_ratings
FROM shows;