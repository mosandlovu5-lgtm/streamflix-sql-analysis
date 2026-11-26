# StreamFlix SQL Analysis — Process Journal

## Day 1 — 25 November 2026

### 1. Project Setup

I started by reading the project brief to understand the business objectives, database structure and assessment requirements.

I installed DB Browser for SQLite and created a database for the StreamFlix project. I also prepared my project folder in Visual Studio Code with all five required files.

### 2. Database Setup and Validation

I imported the provided `streamflix_setup.sql` file and executed the entire script successfully.

Before starting my analysis, I verified the number of records in each table:

| Table | Expected Rows | Actual Rows | Status |
|---|---:|---:|---|
| users | 12 | 12 | Passed |
| shows | 10 | 10 | Passed |
| views | 25 | 25 | Passed |

All three tables matched the expected row counts.

### 3. Challenges and Solutions

Initially, I struggled to locate the SQL setup file in my Downloads folder. I resolved this by obtaining the original setup file and opening it through the Execute SQL tab in DB Browser.

I also learned how to open a separate SQL tab to run validation queries without modifying the original setup script.

### 4. What I Learned

I learned how to create and populate a SQLite database, execute SQL scripts and validate a dataset before beginning an analysis. This helped me understand the importance of checking data before drawing business conclusions.


## Day 2 — 26 November 2026

### 5. Practising SQL Techniques

Before starting the assessment questions, I completed the five worked examples provided in the project brief. These helped me understand how to combine tables using JOINs, group data, identify unmatched records using LEFT JOIN, use subqueries and calculate business metrics using CASE.

### 6. Section A — Foundations

I completed the first four analysis questions using SELECT, WHERE, SUM, AVG, COUNT and NULL handling.

I identified four Premium subscribers and three users with missing age information. I calculated the total monthly revenue from active subscribers as R1,242 and the average show rating as 7.8 out of 10.

I also learned that AVG and COUNT(column) ignore NULL values, while COUNT(*) counts all records.

I validated my results against the checkpoints provided in the project brief before saving my queries in analysis.sql.


### 7. Section B — Grouping and Filtering Groups

In this section, I used GROUP BY, HAVING, COUNT, AVG and ORDER BY to analyse subscribers, content ratings and viewing behaviour.

I found that all three subscription plans had four registered users each. I also discovered that Drama had the highest average rating and was the only genre with more than two shows.

When analysing viewing behaviour by device, I found that TV users had the longest average viewing sessions.

One of the important things I learned was the difference between WHERE and HAVING. WHERE filters individual records, while HAVING allows me to filter results after grouping them.

I also learned that getting a numerical result is not enough. As a data analyst, I need to understand what the result means for the business and consider the limitations of the available data before making recommendations.### 7. Section B — Grouping and Filtering Groups

In this section, I used GROUP BY, HAVING, COUNT, AVG and ORDER BY to analyse subscribers, content ratings and viewing behaviour.

I found that all three subscription plans had four registered users each. I also discovered that Drama had the highest average rating and was the only genre with more than two shows.

When analysing viewing behaviour by device, I found that TV users had the longest average viewing sessions.

One of the important things I learned was the difference between WHERE and HAVING. WHERE filters individual records, while HAVING allows me to filter results after grouping them.

I also learned that getting a numerical result is not enough. As a data analyst, I need to understand what the result means for the business and consider the limitations of the available data before making recommendations.