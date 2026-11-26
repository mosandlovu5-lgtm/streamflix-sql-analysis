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


-- ============================================================
-- SECTION B: GROUPING AND FILTERING GROUPS
-- GROUP BY, HAVING and Aggregate Functions
-- ============================================================


-- Q5: Count the number of users on each subscription plan.

SELECT plan,
       COUNT(*) AS total_users
FROM users
GROUP BY plan
ORDER BY plan;


-- Q6: Calculate the average rating for each genre,
-- ordered from highest to lowest.

SELECT genre,
       ROUND(AVG(rating), 2) AS average_rating
FROM shows
GROUP BY genre
ORDER BY average_rating DESC;


-- Q7: Identify genres that contain more than two shows.

SELECT genre,
       COUNT(*) AS total_shows
FROM shows
GROUP BY genre
HAVING COUNT(*) > 2;


-- Q8: Calculate average minutes watched per device,
-- ordered from highest to lowest.

SELECT device,
       ROUND(AVG(minutes_watched), 2) AS average_minutes
FROM views
GROUP BY device
ORDER BY average_minutes DESC;