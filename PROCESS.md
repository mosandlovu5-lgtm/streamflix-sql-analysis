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

### Mentor Feedback and Critical Thinking

During the project, I asked my mentor two questions about the business analysis.

My first question was about whether the lack of viewing activity among cancelled subscribers was actually the reason they cancelled. My mentor explained that correlation does not necessarily mean causation and that additional data would be needed to understand customer behaviour.

My second question was about calculating revenue per subscription plan, because the total monthly revenue and number of users per plan were not enough to directly answer which plan generated the most revenue.

My mentor encouraged me to run an additional query to calculate revenue per plan and explain my reasoning in the findings report.

This feedback helped me understand that data analysis is not just about writing SQL queries. It also involves asking the right questions, recognising the limitations of a dataset and using evidence to support business decisions.

I decided to include additional queries investigating revenue per plan and the relationship between customer engagement and subscription cancellations.


### 8. Section C — Combining Tables Using JOINs

In this section, I worked with all three tables to analyse customer engagement and viewing behaviour.

I used INNER JOIN to connect users, views and shows. I combined JOINs with GROUP BY, SUM and COUNT to calculate viewing minutes per genre, identify the most-watched show and compare engagement across subscription plans.

I found that Drama generated the most viewing minutes and Township Tales was the most-played show. I also discovered that the three most-engaged users were all Premium subscribers.

Using LEFT JOIN, I identified three users who had never watched anything in the available viewing records. All three had cancelled their subscriptions.

Based on my mentor's feedback, I understand that this does not necessarily mean that a lack of viewing activity caused them to cancel. More information would be needed to understand their reasons.

This section helped me understand how combining tables can provide more meaningful business insights than analysing individual tables separately.


### 9. Section D — Deeper Analysis and Data Quality

In this section, I learned how to use subqueries, CASE statements and LOWER() to perform deeper analysis.

I used a subquery to identify users who pay more than the average subscription price. I found that all four Premium users pay above the average.

I also calculated the churn rate for each subscription plan and discovered that Standard had the highest churn rate at 75%, followed by Basic at 25% and Premium at 0%.

Another issue I identified was the inconsistent capitalisation of country names. I used LOWER() to group the country names correctly without changing the original data.

Lastly, I used a CASE statement to categorise shows according to their ratings and handle missing ratings separately.

This section helped me understand how important data quality and accurate calculations are when analysing business performance.


### 10. Additional Business Analysis and Mentor Feedback

After completing the 18 compulsory questions, I decided to investigate the business performance of StreamFlix further.

During my discussion with my mentor, I learned that knowing the total revenue and number of subscribers per plan was not enough to determine which subscription plan generated the most revenue.

I created an additional query and discovered that Premium generated R796 per month, contributing approximately 64.1% of the total monthly revenue.

I also investigated the relationship between customer engagement and subscription cancellations. I found that three of the four cancelled subscribers had no recorded viewing activity, while all active subscribers had watched content.

My mentor helped me understand the difference between correlation and causation. Although the results suggest a relationship between engagement and churn, more data would be needed to understand the actual reasons customers cancelled.

I also investigated the potential monthly revenue associated with cancelled subscriptions and checked whether any active subscribers had no viewing records.

This additional analysis helped me understand that being a data analyst is not just about writing SQL queries but also about asking meaningful questions, interpreting results and providing recommendations that can help a business make better decisions.