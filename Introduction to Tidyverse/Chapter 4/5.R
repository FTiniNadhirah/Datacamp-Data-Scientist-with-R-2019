# Visualizing population
# A histogram is useful for examining the distribution of a numeric variable. In this exercise, you'll create a histogram showing the distribution of country populations in the year 1952.
# 
# Note: geom_histogram() will output a warning that you should pick a better binwidth. Feel free to ignore this here - you won't be tested on its value. If you do decide to set a binwidth, note that choosing values below 100 million makes ggplot2 perform a lot of computation which can cause the session time out.
# 
# Instructions
# 100 XP
# Use the gapminder_1952 dataset (code for generating that dataset is provided) to create a histogram of country population (pop) in the year 1952.

library(gapminder)
library(dplyr)
library(ggplot2)

gapminder_1952 <- gapminder %>%
  filter(year == 1952)

# Create a histogram of population (pop)
ggplot(gapminder_1952, aes(x = pop)) + geom_histogram()