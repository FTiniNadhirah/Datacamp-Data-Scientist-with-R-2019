# Summarizing by year
# In a previous exercise, you found the median life expectancy and the maximum GDP per capita in the year 1957. Now, you'll perform those two summaries within each year in the dataset, using the group_by verb.
# 
# Instructions
# 100 XP
# Find the median life expectancy (lifeExp) and maximum GDP per capita (gdpPercap) within each year, saving them into medianLifeExp and maxGdpPercap, respectively.

library(gapminder)
library(dplyr)

# Find median life expectancy and maximum GDP per capita in each year
gapminder %>%
  group_by(year) %>%
  summarize(medianLifeExp = median(lifeExp), maxGdpPercap = max(gdpPercap))