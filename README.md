# **Employee Insights Dashboard**

**📌Project Overview**

The **Employee Insights Dashboard** project allows you to explore and visualize employee data across departments, salaries, performance, and more.  

This project is ideal for:

- Beginners learning SQL & Power BI  
- Portfolio projects for data analysis roles  
- Practicing data cleaning, querying, and visualization

**📊 Dataset Description**
| Column                | Data Type | Description                                    |
|-----------------------|:---------:|------------------------------------------------|
| employee_id           |    TEXT   | Unique employee identifier (E001, E002…)       |
| first_name, last_name |    TEXT   | Employee name                                  |
| gender                |    TEXT   | Male / Female / Non-binary                     |
| age                   |  INTEGER  | 21–60                                          |
| department            |    TEXT   | HR, IT, Finance, Sales, Marketing, Operations  |
| job_title             |    TEXT   | Specific role (e.g., Data Analyst, HR Manager) |
| salary                |    REAL   | Annual salary in USD                           |
| hire_date             |    TEXT   | Date of joining (YYYY-MM-DD)                   |
| performance_score     |  INTEGER  | 1–5 scale                                      |
| city,country          |    TEXT   | Location                                       |
| remote_status         |    TEXT   | Yes / No                                       |
| bonus_percent         |    REAL   | 0–20%                                          |
| years_experience      |  INTEGER  | Total years in workforce                       |


💡 **Data source:** Generated using Python Faker library (North America).

**The aim of this project is to:**

- Generating a clean employee dataset (500 North American employees) and Storing it in **SQLite**
- Exploring the data with **SQL queries**
- Creating an **interactive Power BI dashboard**
