# Crowdfunding Data Analysis Project

##Overview
This project analyzes crowdfunding data by integrating PostgreSQL with Python using Pandas, SQLAlchemy, and Psycopg2. The project involves cleaning, transforming, and storing data in a structured PostgreSQL database, making it accessible for further analysis.

## Technologies Used
•	Python: Data processing and database integration
•	PostgreSQL: Relational database for structured data storage
•	SQLAlchemy: ORM for handling database transactions
•	Pandas & NumPy: Data manipulation and transformation
•	Psycopg2: PostgreSQL connection and execution of SQL queries
•	Jupyter Notebook: Development and visualization

## Workflow

# 1. Database Setup
    There are 4 steps which we intend to perform in PostgreSQL. They are
1.	Create a database, that is, crowdfunding_db
2.	Create tables (category, subcategory, contacts and campaign) in the database.
3.	Import data into their respective tables.
4.	Verify whether the data is properly imported in these tables.
In this project, we perform these above specified operations in Jupyter Notebook by integrating the Notebook with PostgreSQL using psycopg2.

    For this project, in addition to other modules, we have installed
1.	psycopg2 - This act as a bridge between Jupyter Notebook and PostgreSQL.
2.	python -dotenv – This library is used to load environment variables from a .env file into Python. This helps keep sensitive information (like database credentials, API keys, and passwords) out of the codebase.

The following steps are involved for connecting to PostgreSQL from Jupyter Notebook.
•	Connect to Postgres database.
•	Drop crowdfunding_db if it exists.
•	Create a fresh crowdfunding_db.
•	Reconnect to crowdfunding_db for creating tables and data insertion.

# 2. Data Extraction & Transformation
•	Read crowdfunding.xlsx using Pandas.
•	Split category & sub-category into separate columns.
•	Generate unique category and subcategory IDs.
•	Create a copy of crowdfunding data and name it as campaign_df
•	Format date columns (launched_date and end_date).
•	Change data types of columns (goal and pledged)
•	Clean campaign data and drop unnecessary columns.
•	Merge campaign dataframe with category and subcategory dataframes.
•	Read and process contacts.xlsx, extracting first and last names and email addresses.

# 3. Data Storage
•	Export cleaned data as CSV files:
o	category.csv
o	subcategory.csv
o	campaign.csv
o	contact_info.csv

# 4.Database Integration
    After extraction and transformation, there are four dataframes- category, subcategory, contacts and campaign
•	Create tables for these dataframes using SQLAlchemy ORM.
•	Define relationships between tables (Campaign, Category, Subcategory, Contacts).
•	Load data into PostgreSQL tables using SQLAlchemy ORM.
•	Query tables to verify successful data insertion.

## Tables Structure
•	Category (category_id, category)
•	Subcategory (subcategory_id, subcategory)
•	Contacts (contact_id, first_name, last_name, email)
•	Campaign (cf_id, contact_id, company_name, description, goal, pledged, outcome, backers_count, country, currency, 
launched_date, end_date, category_id, subcategory_id)

## Results
•	Successful integration of crowdfunding data into PostgreSQL.
•	Data is structured and normalized for efficient querying and analysis.
•	ORM-based interaction enables seamless database operations.

