# Faceting by year
# All of the graphs in this chapter have been visualizing statistics within one year. Now that you're able to use faceting, however, you can create a graph showing all the country-level data from 1952 to 2007, to understand how global statistics have changed over time.
# 
# Instructions
# 100 XP
# Create a scatter plot of the gapminder data:
# Put GDP per capita (gdpPercap) on the x-axis and life expectancy (lifeExp) on the y-axis, with continent (continent) represented by color and population (pop) represented by size.
# Put the x-axis on a log scale
# Facet by the year variable

library(gapminder)
library(dplyr)
library(ggplot2)

# Scatter plot comparing gdpPercap and lifeExp, with color representing continent
# and size representing population, faceted by year
ggplot(gapminder, aes(x = gdpPercap, y = lifeExp, color = continent, size = pop)) + geom_point() + scale_x_log10() + facet_wrap(~ year)