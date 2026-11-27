# StreamFlix — SQL Business Analytics

## Project Overview

StreamFlix is a streaming service offering Basic, Standard and Premium subscription plans.

The purpose of this project was to use SQL to analyse subscription revenue, customer churn, viewing behaviour, content performance and data quality.

The project demonstrates how raw data can be transformed into meaningful business insights and recommendations that support informed decision-making.

## Author

- **Name:** Mosa Ndlovu
- **Institution:** Melsoft Academy
- **Programme:** Data Science
- **Cohort:** January Cohort 2026
- **Course:** SQL for Data Analysis
- **Project:** SQL Project 1 — StreamFlix Analytics

## Project Objectives

- Analyse monthly subscription revenue.
- Identify customer cancellation patterns.
- Understand customer engagement and viewing behaviour.
- Identify the most popular shows and genres.
- Identify and handle data quality issues.
- Provide evidence-based business recommendations.

## Tools and Technologies

- SQL
- SQLite
- DB Browser for SQLite
- Visual Studio Code
- Git
- GitHub
- Markdown

## Dataset Description

The StreamFlix database consists of three related tables.

| Table | Records | Description |
|---|---:|---|
| users | 12 | Subscriber information, subscription plans, monthly prices and account status. |
| shows | 10 | Show titles, genres, ratings, release years and duration. |
| views | 25 | Viewing history, watch dates, minutes watched and devices used. |

The views table connects the users and shows tables through user_id and show_id.

The dataset includes missing values and inconsistent country names to represent realistic data quality challenges.

## Repository Structure

| File | Description |
|---|---|
| streamflix_setup.sql | Original SQL script used to create and populate the database. |
| analysis.sql | Contains 18 compulsory SQL queries and four additional business analysis queries. |
| FINDINGS.md | Detailed business findings, recommendations and limitations. |
| PROCESS.md | Project journal documenting my approach, challenges, learning and mentor feedback. |
| README.md | Project overview and instructions. |

## Key Performance Indicators

| Metric | Result |
|---|---:|
| Registered subscribers | 12 |
| Active subscribers | 8 |
| Cancelled subscribers | 4 |
| Monthly subscription revenue | R1,242 |
| Overall cancellation percentage | 33.3% |
| Total viewing sessions | 25 |
| Total viewing minutes | 1,139 |

## Three Key Findings

### 1. Premium Is the Strongest Revenue-Generating Plan

Premium generates R796 per month, accounting for approximately 64.1% of StreamFlix's total monthly subscription revenue.

Premium subscribers also recorded the highest number of viewing sessions and included the three most-engaged customers.

### 2. Standard Has the Highest Customer Churn

Standard has a churn rate of 75%, compared with Basic at 25% and Premium at 0%.

Three of the four cancelled subscribers had no recorded viewing activity.

Although this suggests a relationship between customer engagement and churn, the available data cannot establish why customers cancelled.

### 3. Drama Drives the Most Viewing Activity

Drama generated 654 viewing minutes, representing approximately 57.4% of total recorded viewing time.

Township Tales was the most frequently played show, with five recorded plays.

StreamFlix could use popular content to encourage customer engagement.

## Business Recommendation

I recommend that StreamFlix introduce and test an early customer engagement and retention programme, particularly for Standard subscribers.

The company could use personalised content recommendations, welcome messages and cancellation surveys to improve engagement and better understand why customers leave.

## Skills Demonstrated

- SELECT and WHERE statements
- Aggregate functions: COUNT, SUM and AVG
- GROUP BY and HAVING
- ORDER BY and LIMIT
- INNER JOIN and LEFT JOIN
- Subqueries
- CASE statements
- NULL handling
- Data cleaning using LOWER()
- COUNT(DISTINCT)
- Revenue and churn analysis
- Business reporting
- Critical thinking and problem-solving
- Git version control

## How to Run This Project

1. Clone or download this GitHub repository.
2. Open DB Browser for SQLite.
3. Create a new SQLite database.
4. Open the Execute SQL tab.
5. Load and execute the entire streamflix_setup.sql file to create and populate the database.
6. Confirm that the database contains 12 users, 10 shows and 25 viewing records.
7. Open analysis.sql.
8. Execute the numbered SQL queries individually to reproduce the analysis.
9. Read FINDINGS.md for the detailed business insights and recommendations.

Note: Running the setup script again recreates the original project tables.

## Limitations

The dataset is relatively small and does not include detailed customer feedback, login activity or billing failure records.

The results should therefore be interpreted carefully. A relationship between two variables does not necessarily establish causation.

## Project Reflection

This project helped me develop a better understanding of how SQL is used in real-world data analysis.

I learned that being a data analyst involves more than writing queries. It also requires understanding business problems, validating results, asking meaningful questions and communicating findings clearly.

Through additional research within the dataset and discussions with my mentor, I was able to extend my analysis beyond the compulsory questions and develop stronger business recommendations.
