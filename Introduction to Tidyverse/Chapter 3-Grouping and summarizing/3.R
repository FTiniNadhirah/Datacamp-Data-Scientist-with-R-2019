# Summarizing by continent and year
# Instead of grouping just by year, or just by continent, you'll now group by both continent and year to summarize within each.
# 
# Instructions
# 100 XP
# Find the median life expectancy (lifeExp) and maximum GDP per capita (gdpPercap) within each combination of continent and year, saving them into medianLifeExp and maxGdpPercap, respectively.

library(gapminder)
library(dplyr)

# Find median life expectancy and maximum GDP per capita in each continent/year combination
gapminder %>%
  group_by(continent, year) %>%
  summarize(medianLifeExp = median(lifeExp), maxGdpPercap = max(gdpPercap))
