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