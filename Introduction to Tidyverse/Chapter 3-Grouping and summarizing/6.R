# Comparing median life expectancy and median GDP per continent in 2007
# In these exercises you've generally created plots that show change over time. But as another way of exploring your data visually, you can also use ggplot2 to plot summarized data to compare continents within a single year.
# 
# Instructions
# 100 XP
# Instructions
# 100 XP
# Filter the gapminder dataset for the year 2007, then summarize the median GDP per capita and the median life expectancy within each continent, into columns called medianLifeExp and medianGdpPercap. Save this as by_continent_2007.
# Use the by_continent_2007 data to create a scatterplot comparing these summary statistics for continents in 2007, putting the median GDP per capita on the x-axis to the median life expectancy on the y-axis. Color the scatter plot by continent. You don't need to add expand_limits(y = 0) for this plot.


library(gapminder)
library(dplyr)
library(ggplot2)

# Summarize the median GDP and median life expectancy per continent in 2007
by_continent_2007 <- gapminder %>%
  filter(year == 2007) %>%
  group_by(continent) %>%
  summarize(medianLifeExp = median(lifeExp), medianGdpPercap = median(gdpPercap))

# Use a scatter plot to compare the median GDP and median life expectancy
ggplot(by_continent_2007, aes(x = medianGdpPercap, y = medianLifeExp, color = continent)) + geom_point()
