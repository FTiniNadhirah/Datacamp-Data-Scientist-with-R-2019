# Creating a subgraph for each continent
# You've learned to use faceting to divide a graph into subplots based on one of its variables, such as the continent.
# 
# Instructions
# 100 XP
# Create a scatter plot of gapminder_1952 with the x-axis representing population (pop), the y-axis representing life expectancy (lifeExp), and faceted to have one subplot per continent (continent). Put the x-axis on a log scale.

library(gapminder)
library(dplyr)
library(ggplot2)

gapminder_1952 <- gapminder %>%
  filter(year == 1952)

# Scatter plot comparing pop and lifeExp, faceted by continent
ggplot(gapminder_1952, aes(x = pop, y = lifeExp)) + geom_point() + scale_x_log10() + facet_wrap(~ continent)