# Visualizing median GDP per capita per continent over time
# In the last exercise you were able to see how the median life expectancy of countries changed over time. Now you'll examine the median GDP per capita instead, and see how the trend differs among continents.
# 
# Instructions
# 100 XP
# Summarize the gapminder dataset by continent and year, finding the median GDP per capita (gdpPercap) within each and putting it into a column called medianGdpPercap. Use the assignment operator <- to save this summarized data as by_year_continent.
# Create a scatter plot showing the change in medianGdpPercap by continent over time. Use color to distinguish between continents, and be sure to add expand_limits(y = 0) so that the y-axis starts at zero.

library(gapminder)
library(dplyr)
library(ggplot2)

# Summarize medianGdpPercap within each continent within each year: by_year_continent
by_year_continent <- gapminder %>%
  group_by(continent, year) %>%
  summarize(medianGdpPercap = median(gdpPercap))

# Plot the change in medianGdpPercap in each continent over time
ggplot(by_year_continent, aes(x = year, y = medianGdpPercap,color = continent), geom_point(), expand_limits(y = 0))