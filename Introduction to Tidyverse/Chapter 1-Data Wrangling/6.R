# Using mutate to change or create a column
# Suppose we want life expectancy to be measured in months instead of years: you'd have to multiply the existing value by 12. You can use the mutate() verb to change this column, or to create a new column that's calculated this way.
# 
# Instructions
# 100 XP
# Use mutate() to change the existing lifeExp column, by multiplying it by 12: 12 * lifeExp.
# Use mutate() to add a new column, called lifeExpMonths, calculated as 12 * lifeExp.
library(gapminder)
library(dplyr)

# Use mutate to change lifeExp to be in months
gapminder %>%
  mutate(lifeExp = 12 * lifeExp)

# Use mutate to create a new column called lifeExpMonths
gapminder %>%
  mutate(lifeExpMonths = 12 * lifeExp)