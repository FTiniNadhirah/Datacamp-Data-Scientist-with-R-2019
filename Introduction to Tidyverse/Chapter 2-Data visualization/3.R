# Comparing population and life expectancy
# In this exercise, you'll use ggplot2 to create a scatter plot from scratch, to compare each country's population with its life expectancy in the year 1952.
# 
# Instructions
# 100 XP
# Create a scatter plot of gapminder_1952 with population (pop) is on the x-axis and life expectancy (lifeExp) on the y-axis.

library(gapminder)
library(dplyr)
library(ggplot2)

gapminder_1952 <- gapminder %>%
  filter(year == 1952)

# Create a scatter plot with pop on the x-axis and lifeExp on the y-axis
ggplot(gapminder_1952, aes(x = pop, y = lifeExp)) + geom_point()