# Summarizing multiple variables in 1957
# The summarize() verb allows you to summarize multiple variables at once. In this case, you'll use the median() function to find the median life expectancy and the max() function to find the maximum GDP per capita.
# 
# Instructions
# 100 XP
# Find both the median life expectancy (lifeExp) and the maximum GDP per capita (gdpPercap) in the year 1957, calling them medianLifeExp and maxGdpPercap respectively. You can use the max() function to find the maximum.

library(gapminder)
library(dplyr)

# Filter for 1957 then summarize the median life expectancy and the maximum GDP per capita
gapminder %>%
  filter(year == 1957) %>%
  summarize(medianLifeExp = median(lifeExp), maxGdpPercap = max(gdpPercap))