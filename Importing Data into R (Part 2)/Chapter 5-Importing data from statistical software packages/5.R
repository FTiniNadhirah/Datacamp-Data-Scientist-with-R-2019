# Import STATA data with foreign (1)
# The foreign package offers a simple function to import and read STATA data: read.dta().
# 
# In this exercise, you will import data on the US presidential elections in the year 2000. The data in florida.dta contains the total numbers of votes for each of the four candidates as well as the total number of votes per election area in the state of Florida (Source: Florida Department of State). The file is available in your working directory, you can download it here if you want to experiment some more.
# 
# Instructions
# 100 XP
# Instructions
# 100 XP
# Load the foreign package; it's already installed on DataCamp's servers.
# Import the data on the elections in Florida, "florida.dta", and name the resulting data frame florida. Use read.dta() without specifying extra arguments.
# Check out the last 6 observations of florida with tail()

# Load the foreign package
library(foreign)
# Import florida.dta and name the resulting data frame florida
florida <- read.dta("florida.dta")
# Check tail() of florida
tail(florida)