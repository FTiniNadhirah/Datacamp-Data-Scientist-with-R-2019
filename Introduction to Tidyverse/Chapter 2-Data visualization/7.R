# Adding size and color to a plot
# In the last exercise, you created a scatter plot communicating information about each country's population, life expectancy, and continent. Now you'll use the size of the points to communicate even more.
# 
# Instructions
# 100 XP
# Modify the scatter plot so that the size of the points represents each country's GDP per capita (gdpPercap).

library(gapminder)
library(dplyr)
library(ggplot2)

gapminder_1952 <- gapminder %>%
  filter(year == 1952)

# Add the size aesthetic to represent a country's gdpPercap
ggplot(gapminder_1952, aes(x = pop, y = lifeExp, color = continent, size = gdpPercap)) +
  geom_point() +
  scale_x_log10()