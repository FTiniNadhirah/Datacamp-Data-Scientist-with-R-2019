# Putting the x- and y- axes on a log scale
# Suppose you want to create a scatter plot with population on the x-axis and GDP per capita on the y-axis. Both population and GDP per-capita are better represented with log scales, since they vary over many orders of magnitude.
# 
# Instructions
# 100 XP
# Create a scatter plot with population (pop) on the x-axis and GDP per capita (gdpPercap) on the y-axis. Put both the x- and y- axes on a log scale.

library(gapminder)
library(dplyr)
library(ggplot2)

gapminder_1952 <- gapminder %>%
  filter(year == 1952)

# Scatter plot comparing pop and gdpPercap, with both axes on a log scale
ggplot(gapminder_1952, aes(x = pop, y = gdpPercap)) + geom_point() + scale_x_log10() + scale_y_log10()