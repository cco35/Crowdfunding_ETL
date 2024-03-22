# Crowdfunding ETL Project

## Project Overview

The Crowdfunding ETL project involved collaborating with a partner to build an Extract, Transform, Load (ETL) pipeline using Python, Pandas, and Postgres. The main objectives were to extract data from Excel files, transform it into structured formats, create CSV files, design a database schema, and import the data into a Postgres database.

## Project Structure

1. **Data Extraction and Transformation:**
   - Extracted crowdfunding data from Excel files (`crowdfunding.xlsx` and `contacts.xlsx`).
   - Utilized Python and Pandas for data transformation, cleaning, and structuring.

2. **CSV File Creation:**
   - Created a Category DataFrame with columns "category_id" and "category" by extracting unique categories from the crowdfunding data.
   - Exported the Category DataFrame to `category.csv`.
   - Created a Subcategory DataFrame with columns "subcategory_id" and "subcategory" by extracting unique subcategories from the crowdfunding data.
   - Exported the Subcategory DataFrame to `subcategory.csv`.
   - Transformed the crowdfunding data to create a Campaign DataFrame with columns including "cf_id", "contact_id", "company_name", "description", "goal", "pledged", "outcome", "backers_count", "country", "currency", "launch_date", "end_date", "category_id", and "subcategory_id".
   - Exported the Campaign DataFrame to `campaign.csv`.
   - Created a Contacts DataFrame by extracting contact information from the contacts Excel file.
   - Exported the Contacts DataFrame to `contacts.csv`.

3. **Database Design and Implementation:**
   - Sketched an Entity-Relationship Diagram (ERD) based on the CSV file information using QuickDBD.
   - Designed a table schema for each CSV file specifying data types, primary keys, foreign keys, and constraints.
   - Saved the database schema as `crowdfunding_db_schema.sql`.
   - Created a Postgres database named `crowdfunding_db`.
   - Created tables in the correct order based on the ERD and CSV files.
   - Imported data from CSV files into corresponding SQL tables in the Postgres database.
   - Verified data integrity and correctness by running SELECT statements for each table.

## Repository Structure

- **README.md:** Overview of the project.
- **ETL_Mini_Project_COnubogu_EPAntoine.ipynb:** Jupyter notebook for ETL pipeline.
- **Resources/:** Folder containing data files (`crowdfunding.xlsx` and `contacts.xlsx`), generated CSV files (`category.csv`, `subcategory.csv`, `campaign.csv`, `contacts.csv`) and the ERD of the database (`ERD_CrowdfundingDB.png`) .
- **crowdfunding_db_schema.sql:** Postgres database schema file.

## Tools Used

Python and Pandas: Used for data extraction, transformation, and cleaning.
PgAdmin: Used for managing and interacting with the Postgres database, including creating the database and tables.
Jupyter Notebook: Used for developing and documenting the ETL pipeline.
QuickDBD: Used for sketching the Entity-Relationship Diagram (ERD) to design the database schema.

## Conclusion

The Crowdfunding ETL project demonstrates proficiency in building robust ETL pipelines, handling data extraction, transformation, and loading tasks efficiently. By leveraging Python, Pandas, and Postgres, the project showcases skills in data manipulation, database design, and collaboration within a team environment.
