# Exploratory visualization of age
# Let's perform an exploratory data analysis (EDA) of the numerical explanatory variable age. You should always perform an exploratory analysis of your variables before any formal modeling. This will give you a sense of your variable's distributions, any outliers, and any patterns that might be useful when contructing your eventual model.
# 
# Instructions
# 100 XP
# Using the ggplot2 package, create a histogram of age with bins in 5 year increments.
# Label the x axis with "age" and the y axis with "count".


# Load packages
library(moderndive)
library(ggplot2)

# Plot the histogram
ggplot(evals, aes(x = age)) +
  geom_histogram(binwidth = 5) +
  labs(x = "age", y = "count")