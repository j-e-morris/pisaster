## this script loads the data and calculates some summary statistics

## load libraries
library("here")

## set location of the data directory 
data_dir <- here("data")

## load data file
pisaster_data <- readRDS(file.path(data_dir, "pisaster_data.Rds"))

## peek at the data
head(pisaster_data)

## calculate mean counts across all years, sites, and plots
mean_count <- mean(pisaster_data$count)

## solution - pisaster_data is a matrix, count is a list with single value

## load 'magrittr' to get pipe operator
library(magrittr)

mean_count = pisaster_data[,"count"] %>%
  unlist() %>%
  mean()
mean_count  
