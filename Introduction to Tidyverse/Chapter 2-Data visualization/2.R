# Comparing population and GDP per capita
# In the video you learned to create a scatter plot with GDP per capita on the x-axis and life expectancy on the y-axis (the code for that graph is shown here). When you're exploring data visually, you'll often need to try different combinations of variables and aesthetics.
# 
# Instructions
# 100 XP
# Change the scatter plot of gapminder_1952 so that (pop) is on the x-axis and GDP per capita (gdpPercap) is on the y-axis.
library(gapminder)
library(dplyr)
library(ggplot2)

gapminder_1952 <- gapminder %>%
  filter(year == 1952)

# Change to put pop on the x-axis and gdpPercap on the y-axis
ggplot(gapminder_1952, aes(x = pop, y = gdpPercap)) +
  geom_point()