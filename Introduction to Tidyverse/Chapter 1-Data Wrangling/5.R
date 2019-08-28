# Filtering and arranging
# You'll often need to use the pipe operator (%>%) to combine multiple dplyr verbs in a row. In this case, you'll combine a filter() with an arrange() to find the highest population countries in a particular year.
# 
# Instructions
# 100 XP
# Use filter() to extract observations from just the year 1957, then use arrange() to sort in descending order of population (pop).
library(gapminder)
library(dplyr)

# Filter for the year 1957, then arrange in descending order of population


gapminder %>%
  filter(year == 1957) %>%
  arrange(desc(pop))