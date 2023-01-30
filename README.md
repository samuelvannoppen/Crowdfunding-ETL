# Crowdfunding-ETL

## Overview of Project
Helping Brita from Independent Funding move current company data into a PostgreSQL database. 

### Purpose
Independent Funding is a crowdfunding platform for funding independent projects or ventures. By moving the data to a Postgre database their analytics team will be able to perform analysis and generate reports for company stakeholders and doners.

## Analysis and Challenges 

### Extracting and transforming the data
The data was reviewed in its orginal format, a single .xlsx file containing two worksheets. The data was imported with any needed dependinces to Juypter Notebook. The two sheets were used to create a total of four dataframes. The iterative process was used to clean the data. This included, spliting the column 'category & sub-category' into two individual columns. Creating category and subcategory LOOKUP tables. Sevreal columns were added to the campaign_df, and the epoch time was converted to ISO time. The iterative process was used again to split, convert, and extract the contact info and backer info respectivly. List comprehension was used instead of Regex do more familarity with the former.

### Creating a PostgreSQL database, schema and ERD


### Loading the CSV files into the database

### Performing SQL queries to generate reports for stakeholders



8.3.5
The contacts_df DataFrame will contain the following columns, which all contain data from the contact_info worksheet:

A column named "contact_id" that contains the unique contact ID of each contact person.
A column named "first_name" that contains the first name of each contact person.
A column named "last_name" that contains the first name of each contact person.
A column named "email" that contains the email address of each contact person.

You’ll repurpose your code that uses the list comprehension to extract the "contact_id" number from each row and add the values to a new column, named "contact_id".

8.5.1
load the data into a database.
create a map of the database and table schemas.

8.5.2
create a map of the database and table schema by using an entity relationship diagram (ERD)
model the data, which will allow you to establish the relationships among the four datasets.

8.5.3
create a new database in pgAdmin and create the tables by using the schema

8.5.4
load the data into a database. To do so, we'll use pgAdmin to import our saved CSV files.

## Results

# Stock-Analysis

## Further Study
Further study would be recommend on both of these stock options buy increasing the data size to 5 years.


