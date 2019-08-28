# Visualizing median GDP per capita by continent over time
# In the last exercise you used a line plot to visualize the increase in median GDP per capita over time. Now you'll examine the change within each continent.
# 
# Instructions
# 100 XP
# Use group_by() and summarize() to find the median GDP per capita within each year and continent, calling the output column medianGdpPercap. Use the assignment operator <- to save it to a dataset called by_year_continent.
# Use the by_year_continent dataset to create a line plot showing the change in median GDP per capita over time, with color representing continent. Be sure to use expand_limits(y = 0) to include 0 on the y-axis.

library(gapminder)
library(dplyr)
library(ggplot2)

# Summarize the median gdpPercap by year & continent, save as by_year_continent
by_year_continent <- gapminder %>%
  group_by(year, continent) %>%
  summarize(medianGdpPercap = median(gdpPercap))

# Create a line plot showing the change in medianGdpPercap by continent over time
ggplot(by_year_continent, aes(x = year, y = medianGdpPercap, color = continent)) + geom_line() + expand_limits(y = 0)