# ETL_Project

This project explores the basic concepts of extract, transform, load. 

### Overview ###
I was interested in the relationship between median income and the unemployment rate, how did Covid impact diferent states? I collected monthly unemployment rate by state from 01-2020 to 04-2021, median income by state from 2010-2019 but only used 2019, and estimated population from 2010-2020. 

## Data Sources (Extract) ## 

**Unemployment rate**
https://www.bls.gov/data/#unemployment
Most of the raw datasets contain too much info then needed, so i filtered the results with the tool provided by the website and converted to csv. 

**statecode** used in conjunction with the data above 
https://download.bls.gov/pub/time.series/sm/sm.state
This is the missing column of the above csv when using the tool to query instead of raw data set. 

**Population estimates**
https://www2.census.gov/programs-surveys/popest/datasets/2010-2020/state/totals/
This is a raw dataset, but only a couple columns were used. 

**Median income** 
https://www.census.gov/data/tables/time-series/demo/income-poverty/historical-income-households.html
This is another raw dataset downdloaded directly, only 3 columns used. 

## Data Cleanup (Transform) ## 
#### Unemployment rate #### 
    1. First filter by series ID ending in 3 to select only the unemployment "rate". 
    2. Truncate the Series ID column to leave only the state ID part behind
    3. Check NA, and filled with previous months' average
#### State Code ####
    1. Read, rename columns
    2. join with the csv above
#### Median Income ####
    1. Select only the columns that will be used since the header is messy
    2. rename columns, format string to int
#### Population Estimates ####
    1. select the columns to be used
    2. filter out a few rows that have the total popluation in US, since we are only looking for States'

## PostgreSQL (Load) ##
    1. Create the tables with schemas in PostgreSQL 
    2. populate the tables with pandas dataframe to sql 
    3. Query with joins - then we can compare the difference in 2019's median income,  
    and how the unemployment increased first and decreased slightly   
    in the past few months across different states. 
    

