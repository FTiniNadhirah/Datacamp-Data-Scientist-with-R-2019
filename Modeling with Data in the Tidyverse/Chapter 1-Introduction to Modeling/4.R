# Log10 transformation of house size
# You just saw that the predictor variable sqft_living is right-skewed and hence a log base 10 transformation is warranted to unskew it. Just as we transformed the outcome variable price to create log10_price in the video, let's do the same for sqft_living.
# 
# Instructions 1/2
# 50 XP
# 1
# 2
# Using the mutate() function from dplyr, create a new column log10_size and assign it to house_prices_2 by applying a log10() transformation to sqft_living.

# Load packages
library(moderndive)
library(dplyr)
library(ggplot2)

# Add log10_size
house_prices_2 <- house_prices %>%
  mutate(log10_size = log10(sqft_living))

# Visualize the effect of the log10() transformation by creating a histogram of the new variable log10_size.

# Load packages
library(moderndive)
library(dplyr)
library(ggplot2)

# Add log10_size
house_prices_2 <- house_prices %>%
  mutate(log10_size = log10(sqft_living))

# Plot the histogram  
ggplot(house_prices_2, aes(x = log10_size)) +
  geom_histogram() +
  labs(x = "log10 size", y = "count")