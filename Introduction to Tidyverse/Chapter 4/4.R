# Visualizing GDP per capita by country in Oceania
# You've created a plot where each bar represents one continent, showing the median GDP per capita for each. But the x-axis of the bar plot doesn't have to be the continent: you can instead create a bar plot where each bar represents a country.
# 
# In this exercise, you'll create a bar plot comparing the GDP per capita between the two countries in the Oceania continent (Australia and New Zealand).
# 
# Instructions
# 100 XP
# Instructions
# 100 XP
# Filter for observations in the Oceania continent in the year 1952. Save this as oceania_1952.
# Use the oceania_1952 dataset to create a bar plot, with country on the x-axis and gdpPercap on the y-axis.

library(gapminder)
library(dplyr)
library(ggplot2)

# Filter for observations in the Oceania continent in 1952

# Filter for observations in the Oceania continent in 1952
oceania_1952 <- gapminder %>%
  filter(year == 1952, continent == "Oceania")

# Create a bar plot of gdpPercap by country
ggplot(oceania_1952, aes(x = country, y = gdpPercap)) + geom_col()