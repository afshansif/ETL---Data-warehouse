# ETL Pipeline – University Student Lifestyle Data

## Overview
This project implements an **ETL (Extract, Transform, Load) pipeline** to consolidate student lifestyle data from two universities. The data is collected from different sources: **University A via PostgreSQL** and **University B via a CSV file**. The pipeline performs extraction, cleaning, transformation, and loads the cleaned dataset back into **PostgreSQL**.

---

## Data Sources
- **University A:** `University_A.sql` (PostgreSQL database)  
- **University B:** `University_B.csv` (CSV file)

---

## Dataset Description
Each record represents a student’s lifestyle profile:

| Column Name                     | Description                                         |
|---------------------------------|-----------------------------------------------------|
| `student_id`                     | Unique identifier for each student                  |
| `study_hours_per_day`            | Average hours a student studies daily               |
| `extracurricular_hours_per_day`  | Time spent on clubs, arts, sports, hobbies         |
| `sleep_hours_per_day`            | Number of hours a student sleeps per day           |
| `social_hours_per_day`           | Time spent in social interactions with friends/family |
| `physical_activity_hours_per_day`| Hours of physical activity or exercise             |
| `gpa`                            | Grade Point Average representing academic performance |
| `stress_level`                   | Stress category: Low, Moderate, High               |

---

## ETL Process

1. **Install and Import Required Libraries**

2. **Connect to PostgreSQL (University A)**
   - Fetch all records from `student_lifestyle_dataset` table.  
   - Load data into a DataFrame called `university_a`.

3. **Extract Data from CSV (University B)**
   - Load data from `University_B.csv` into a DataFrame called `university_b`.

4. **Add University Column**
   - Add a column `university` to identify the source:  
     - `'A'` for PostgreSQL data  
     - `'B'` for CSV data

5. **Verify Data Extraction**
   - Display the top rows of both DataFrames.

6. **Standardize Columns**
   - Convert all column names to lowercase.  
   - Remove unwanted spaces or special characters.  
   - Ensure identical column names in both DataFrames.  
   - Rename columns if needed.

7. **Combine Both Datasets**

8. **Data Cleaning & Transformation**
   - Handle missing values (fill/drop).  
   - Check and fix column data types.  
   - Detect and remove duplicates.

9. **Load Data Back into PostgreSQL (pgAdmin)**
   - Connect to PostgreSQL and upload the cleaned dataset as a new table.

10. **Verification**
    - Verify table creation and data integrity in pgAdmin.
