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


-- ============================================================
-- SECTION C: JOINS
-- Customer Engagement and Content Performance
-- ============================================================

-- Q9: Display each view with the user's name
-- and the show's title.

SELECT v.view_id,
       u.full_name,
       s.title,
       v.minutes_watched
FROM views v
JOIN users u ON v.user_id = u.user_id
JOIN shows s ON v.show_id = s.show_id
ORDER BY v.view_id;

-- Q10: Calculate total minutes watched per genre.

SELECT s.genre,
       SUM(v.minutes_watched) AS total_minutes
FROM views v
JOIN shows s ON v.show_id = s.show_id
GROUP BY s.genre
ORDER BY total_minutes DESC;


-- Q11: Identify the most-watched show
-- based on the number of plays.

SELECT s.title,
       COUNT(v.view_id) AS total_plays
FROM views v
JOIN shows s ON v.show_id = s.show_id
GROUP BY s.show_id, s.title
ORDER BY total_plays DESC
LIMIT 1;


-- Q12: Calculate the number of views per plan.
-- Compare Premium and Basic viewing activity.

SELECT u.plan,
       COUNT(v.view_id) AS total_views
FROM views v
JOIN users u ON v.user_id = u.user_id
GROUP BY u.plan
ORDER BY total_views DESC;


-- Q13: Identify the top three most-engaged users
-- based on total minutes watched.

SELECT u.full_name,
       SUM(v.minutes_watched) AS total_minutes
FROM views v
JOIN users u ON v.user_id = u.user_id
GROUP BY u.user_id, u.full_name
ORDER BY total_minutes DESC
LIMIT 3;


-- Q14: Identify users who have never watched anything.

SELECT u.full_name
FROM users u
LEFT JOIN views v ON u.user_id = v.user_id
WHERE v.view_id IS NULL;


-- ============================================================
-- SECTION D: DEEPER ANALYSIS
-- Subqueries, CASE Statements and Data Quality
-- ============================================================

-- Q15: Identify users who pay more than
-- the average monthly subscription price.

SELECT full_name, monthly_price
FROM users
WHERE monthly_price > (
    SELECT AVG(monthly_price)
    FROM users
);


-- Q16: Calculate the churn rate for each
-- subscription plan using CASE.

SELECT plan,
       ROUND(
           100.0 * SUM(
               CASE
                   WHEN is_active = 0 THEN 1
                   ELSE 0
               END
           ) / COUNT(*), 1
       ) AS churn_pct
FROM users
GROUP BY plan
ORDER BY plan;


-- Q17: Standardise country names and
-- count users per country.

SELECT LOWER(country) AS country,
       COUNT(*) AS total_users
FROM users
GROUP BY LOWER(country)
ORDER BY total_users DESC;

-- Q18: Categorise shows based on their ratings
-- using a CASE statement.

SELECT title,
       rating,
       CASE
           WHEN rating IS NULL THEN 'Not rated yet'
           WHEN rating >= 8 THEN 'Highly rated'
           ELSE 'Average'
       END AS rating_category
FROM shows
ORDER BY rating DESC;

