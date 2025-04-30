# Crowdfunding_ETL
Project 2 - ETL pipeline using Python, Pandas and Python dictionary

## Overview
This ETL (Extract, Transform, Load) mini-project involves building an ETL pipeline using Python, Pandas, and either Python dictionary methods or regular expressions. The goal is to extract and transform data from Excel files, create structured CSV files, design an ERD and schema, and load the data into a PostgreSQL database.

## Project Structure
- Extract data from `crowdfunding.xlsx` and `contacts.xlsx`.
- Transform the data into structured DataFrames for categories, subcategories, campaigns, and contacts.
- Export transformed data into CSV files.
- Create an ERD and define a database schema.
- Load data into a PostgreSQL database.

## Team Collaboration
- A shared GitHub repository is created.
- Regular communication was maintained throughout the week to complete the duties.
- Work was divided but pushed into a single final notebook by each of the members.

## Repository Setup
1. One team member created a GitHub repository named `Crowdfunding_ETL`.
2. We then added collaborators.
3. Clone the repository to local machines.
4. Rename the provided Jupyter Notebook file as `ETL_Mini_Project.
5. Add the `Resources` folder containing `crowdfunding.xlsx` and `contacts.xlsx`.
6. Push changes to GitHub.
7. The team pulls changes to ensure synchronization.

## Instructions
### 1. Create Category and Subcategory DataFrames
- Extract category & subcategory data from `crowdfunding.xlsx`.
- Assign sequential `category_id` (e.g., `cat1`, `cat2`, ...).
- Assign sequential `subcategory_id` (e.g., `subcat1`, `subcat2`, ...).
- Save as `category.csv` and `subcategory.csv`.

### 2. Create Campaign DataFrame
- Extract campaign data from `crowdfunding.xlsx`.
- Convert relevant columns to appropriate data types (e.g., float, datetime).
- Merge with category and subcategory DataFrames.
- Save as `campaign.csv`.

### 3. Create Contacts DataFrame
Choose one of the two options:
- **Option 1:** Use Python dictionary methods to extract contact details.
- **Option 2:** Use regular expressions to extract contact details.
- Convert `contact_id` to integer.
- Split names into `first_name` and `last_name`.
- Save as `contacts.csv`.

### 4. Create the Crowdfunding Database
- Inspect the CSV files.
- Design an ERD using QuickDBD.
- Create a database schema (`crowdfunding_db_schema.sql`).
- Set up a PostgreSQL database (`crowdfunding_db`).
- Import CSV data into the appropriate tables.
- Verify table creation and data integrity using `SELECT *` statements.
