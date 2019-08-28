# Adding color to a scatter plot
# In this lesson you learned how to use the color aesthetic, which can be used to show which continent each point in a scatter plot represents.
# 
# Instructions
# 100 XP
# Create a scatter plot with population (pop) on the x-axis, life expectancy (lifeExp) on the y-axis, and with continent (continent) represented by the color of the points. Put the x-axis on a log scale.

library(gapminder)
library(dplyr)
library(ggplot2)

gapminder_1952 <- gapminder %>%
  filter(year == 1952)

# Scatter plot comparing pop and lifeExp, with color representing continent
ggplot(gapminder_1952, aes(x = pop, y = lifeExp, color = continent)) + geom_point() + scale_x_log10()