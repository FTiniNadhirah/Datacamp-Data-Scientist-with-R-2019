# Visualizing median GDP per capita over time
# A line plot is useful for visualizing trends over time. In this exercise, you'll examine how the median GDP per capita has changed over time.
# 
# Instructions
# 100 XP
# Use group_by() and summarize() to find the median GDP per capita within each year, calling the output column medianGdpPercap. Use the assignment operator <- to save it to a dataset called by_year.
# Use the by_year dataset to create a line plot showing the change in median GDP per capita over time. Be sure to use expand_limits(y = 0) to include 0 on the y-axis.
library(gapminder)
library(dplyr)
library(ggplot2)

# Summarize the median gdpPercap by year, then save it as by_year
by_year <- gapminder %>%
  group_by(year) %>%
  summarize(medianGdpPercap = median(gdpPercap))

# Create a line plot showing the change in medianGdpPercap over time
ggplot(by_year, aes(x = year, y = medianGdpPercap)) + geom_line() + expand_limits(y = 0)