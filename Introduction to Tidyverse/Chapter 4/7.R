# Comparing GDP per capita across continents
# A boxplot is useful for comparing a distribution of values across several groups. In this exercise, you'll examine the distribution of GDP per capita by continent. Since GDP per capita varies across several orders of magnitude, you'll need to put the y-axis on a log scale.
# 
# Instructions
# 100 XP
# Use the gapminder_1952 dataset (code is provided) to create a boxplot comparing GDP per capita (gdpPercap) among continents. Put the y-axis on a log scale with scale_y_log10().

library(gapminder)
library(dplyr)
library(ggplot2)

gapminder_1952 <- gapminder %>%
  filter(year == 1952)

# Create a boxplot comparing gdpPercap among continents
ggplot(gapminder_1952, aes(x = continent, y = gdpPercap)) + geom_boxplot() + scale_y_log10()