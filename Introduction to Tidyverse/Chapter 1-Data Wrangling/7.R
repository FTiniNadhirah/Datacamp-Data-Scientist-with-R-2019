# Combining filter, mutate, and arrange
# In this exercise, you'll combine all three of the verbs you've learned in this chapter, to find the countries with the highest life expectancy, in months, in the year 2007.
# 
# Instructions
# 100 XP
# In one sequence of pipes on the gapminder dataset:
#   filter() for observations from the year 2007,
# mutate() to create a column lifeExpMonths, calculated as 12 * lifeExp, and
# arrange() in descending order of that new column
library(gapminder)
library(dplyr)

# Filter, mutate, and arrange the gapminder dataset
gapminder %>%
  filter(year == 2007) %>%
  mutate(lifeExpMonths = 12 * lifeExp) %>%
  arrange(desc(lifeExpMonths))