# funnel-dropoff-analysis

## Overview

This project analyzes a user signup and purchase funnel using event-level data. The objective was to find how many unique users reached each stage of the funnel, calculate the conversion rate between stages, and identify where the maximum number of users dropped off.

## Dataset

The dataset contains three columns:

- `user_id`
- `step`
- `timestamp`

Each row represents an event performed by a user during the signup and purchase process.

## Tools Used

- Microsoft Excel
- MySQL Workbench

## How I Solved It

I imported the CSV file into Excel and MySQL Workbench. Using SQL, I counted the number of unique users at each stage of the funnel. I then arranged the stages in the correct order and calculated the conversion rate in Excel to identify where the highest user drop-off occurred.

## Results

| Stage | Unique Users | Conversion Rate |
| Visited Site | 200 | 100.00% |
| Signup Started | 150 | 75.00% |
| Details Filled | 96 | 64.00% |
| Email Verified | 52 | 54.17% |
| Purchase Completed | 44 | 84.62% |

## Key Finding

The largest drop-off occurs between **Signup Started** and **Details Filled**.

- Users Lost: **54**
- Drop-off Rate: **36%**

This suggests that users are most likely leaving the process while filling in their details, making this the stage that should be investigated first.

## Repository Contents

- `funnel_events_sample.csv` – Dataset
- `funnel_analysis.xlsx` – Excel analysis
- `funnel_analysis.sql` – SQL queries used
