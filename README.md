#Assignment: Extending the Pipeline to 2021

So far in the course, we processed NYC taxi data for 2019 and 2020.
The goal of this assignment is to extend the existing Kestra flows to include data for 2021.

Solution Overview

For this assignment, I used Kestra backfill executions to load data for both Yellow Taxi and Green Taxi datasets covering January–July 2021.

The backfill approach allows historical data to be processed without modifying the existing scheduled logic.

The flow definition used for this assignment is included in kestra.yaml.

#Quiz Questions & Answers
1. 
**Question**
Within the execution for Yellow Taxi, year 2020, month 12, what is the uncompressed file size of
yellow_tripdata_2020-12.csv (output of the extract task)?

**Options**
*128.3 MiB
*134.5 MiB
*364.7 MiB
*692.6 MiB

**Solution**
I added a task immediately after the extract step to calculate and print the file size as part of the task outputs.

The flow was then executed via backfill, and the correct answer was verified from the execution output.

2. 
**Question**
What is the rendered value of the variable file when:
taxi = green
year = 2020
month = 04

**Answer**

green_tripdata_2020-04.csv

3. 
**Question**
How many rows are there for Yellow Taxi data across all CSV files in 2020?

**Query used**

`SELECT COUNT(*)
FROM public.yellow_tripdata
WHERE filename LIKE 'yellow_tripdata_2020%';`

4. 
**Question**
How many rows are there for Green Taxi data across all CSV files in 2020?

**Query used**

`SELECT COUNT(*)
FROM public.green_tripdata
WHERE filename LIKE 'green_tripdata_2020%';`

5.
**Question**
How many rows are there for the Yellow Taxi data in March 2021?

**Query used**

`SELECT COUNT(*)
FROM public.yellow_tripdata
WHERE filename = 'yellow_tripdata_2021-03.csv';`

6. 
**Question**
How would you configure a Schedule trigger to use the New York timezone?

**Answer**
Set the timezone field in the Schedule trigger:

timezone: America/New_York
