# SQL Queries Documentation

This document provides an overview and explanation of a series of SQL queries intended for operations on a database table named `capacity`. These queries serve various purposes, from data selection and aggregation to data ranking and filtering based on specific criteria.

This is for Microsoft SQL Server, if you want to directly use this code, modify as your current using.

## Query 1: Selecting Data for 2023 in Denmark
Retrieves all entries from the capacity table for the year 2023 specific to Denmark (DK), sorted by the most recent updates.

## Query 2 / 3: Average / Sum Price Calculation 
Calculates the average price from the spotprice table, rounding the result to 2 decimal places.

## Query 4: Ranking Records Within Groups
Assigns a rank to each record within partitions of the same id, based on the update_time in descending order. It then selects the top-ranked record in each partition.

## Query 5: Latest Update Time by ID
For each unique id in the capacity table, this query finds the latest update_time.

## Query 6: Sum of Values for Specific Types on a Specific Date
Calculates the sum of value for records of type "daily" and "long term" for a specific date, grouped by country.
