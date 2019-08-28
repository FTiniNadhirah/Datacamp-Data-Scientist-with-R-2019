# read_csv
# CSV files can be imported with read_csv(). It's a wrapper function around read_delim() that handles all the details for you. For example, it will assume that the first row contains the column names.
# 
# The dataset you'll be working with here is potatoes.csv. It gives information on the impact of storage period and cooking on potatoes' flavor. It uses commas to delimit fields in a record, and contains column names in the first row. The file is available in your workspace. Remember that you can inspect your workspace with dir().
# 
# Instructions
# 100 XP
# Load the readr package with library(). You do not need to install the package, it is already installed on DataCamp's servers.
# Import "potatoes.csv" using read_csv(). Assign the resulting data frame to the variable potatoes.

# Load the readr package
library(readr)
# Import potatoes.csv with read_csv(): potatoes
potatoes<-read_csv("potatoes.csv")