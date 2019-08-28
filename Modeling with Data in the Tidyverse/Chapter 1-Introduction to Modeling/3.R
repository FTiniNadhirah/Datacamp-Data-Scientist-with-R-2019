# Exploratory visualization of house size
# Let's create an exploratory visualization of the predictor variable reflecting the size of houses: sqft_living the square footage of living space where 1 sq.foot ??? 0.1 sq.meter.
# 
# After plotting the histogram, what can you say about the distribution of the variable sqft_living?
# 
# Instructions 1/2
# 50 XP
# 2
# Create a histogram of sqft_living.
# Label the x axis with "Size (sq.feet)" and the y axis with "count".

# Load packages
library(moderndive)
library(ggplot2)

# Plot the histogram
ggplot(house_prices, aes(x =sqft_living)) +
  geom_histogram() +
  labs(x = "Size (sq.feet)", y = "count")