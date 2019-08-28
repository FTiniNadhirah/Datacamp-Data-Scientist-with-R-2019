# Summarizing by continent
# You can group by any variable in your dataset to create a summary. Rather than comparing across time, you might be interested in comparing among continents. You'll want to do that within one year of the dataset: let's use 1957.
# 
# Instructions
# 100 XP
# Filter the gapminder data for the year 1957. Then find the median life expectancy (lifeExp) and maximum GDP per capita (gdpPercap) within each continent, saving them into medianLifeExp and maxGdpPercap, respectively.

library(gapminder)
library(dplyr)

# Find median life expectancy and maximum GDP per capita in each continent in 1957
gapminder %>%
  filter(year == 1957) %>%
  group_by(continent) %>%
  summarize(medianLifeExp = median(lifeExp), maxGdpPercap = max(gdpPercap))