# Number of males and females admitted
# The goal of this exercise is to determine the numbers of male and female applicants who got admitted and rejected. Specifically, we want to find out how many males are admitted and how many are rejected. And similarly we want to find how many females are admitted and how many are rejected.
# 
# To do so we will use the count() function from the dplyr package.
# 
# In one step, count() groups the data and then tallies the number of observations in each level of the grouping variable. These counts are available under a new variable called n.
# 
# Instructions
# 100 XP
# Instructions
# 100 XP
# Pass the gender and admission status columns to count() on the ucb_admit dataset (which is already pre-loaded) to count how many of each gender are admitted and how many are rejected.
# 

# Load packages
library(dplyr)

# Count number of male and female applicants admitted
# Count number of male and female applicants admitted
ucb_counts <- ucb_admit %>%
  count(Gender, Admit)

# View result
ucb_counts
