# Visualizing population with x-axis on a log scale
# In the last exercise you created a histogram of populations across countries. You might have noticed that there were several countries with a much higher population than others, which causes the distribution to be very skewed, with most of the distribution crammed into a small part of the graph. (Consider that it's hard to tell the median or the minimum population from that histogram).
# 
# To make the histogram more informative, you can try putting the x-axis on a log scale.
# 
# Instructions
# 100 XP
# Use the gapminder_1952 dataset (code is provided) to create a histogram of country population (pop) in the year 1952, putting the x-axis on a log scale with scale_x_log10().

library(gapminder)
library(dplyr)
library(ggplot2)

gapminder_1952 <- gapminder %>%
  filter(year == 1952)

# Create a histogram of population (pop), with x on a log scale
ggplot(gapminder_1952, aes(x = pop)) + geom_histogram() + scale_x_log10()