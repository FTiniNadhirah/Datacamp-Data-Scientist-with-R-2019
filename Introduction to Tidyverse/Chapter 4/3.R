# Visualizing median GDP per capita by continent
# A bar plot is useful for visualizing summary statistics, such as the median GDP in each continent.
# 
# Instructions
# 100 XP
# Use group_by() and summarize() to find the median GDP per capita within each continent in the year 1952, calling the output column medianGdpPercap. Use the assignment operator <- to save it to a dataset called by_continent.
# Use the by_continent dataset to create a bar plot showing the median GDP per capita in each continent.

library(gapminder)
library(dplyr)
library(ggplot2)

# Summarize the median gdpPercap by year and continent in 1952
by_continent <- gapminder %>%
  group_by(continent) %>%
  filter(year == 1952) %>%
  summarize(medianGdpPercap = median(gdpPercap))

# Create a bar plot showing medianGdp by continent
ggplot(by_continent, aes(x = continent, y = medianGdpPercap)) + geom_col()
