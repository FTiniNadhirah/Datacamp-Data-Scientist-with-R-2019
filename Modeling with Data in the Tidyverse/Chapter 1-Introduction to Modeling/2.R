# Numerical summaries of age
# Let's continue our exploratory data analysis of the numerical explanatory variable age by computing summary statistics. Summary statistics take many values and summarize them with a single value. Let's compute three such values using dplyr data wrangling: mean (AKA the average), the median (the middle value), and the standard deviation (a measure of spread/variation).
# 
# Instructions
# 100 XP
# Calculate the mean, median, and standard deviation of age.
# 

# Load packages
library(moderndive)
library(dplyr)

# Compute summary stats
evals %>%
  summarize(mean_age = mean(age),
            median_age = median(age),
            sd_age = sd(age))