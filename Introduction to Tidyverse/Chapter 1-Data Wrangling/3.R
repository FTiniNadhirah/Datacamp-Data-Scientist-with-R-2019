# Filtering for one country and one year
# You can also use the filter() verb to set two conditions, which could retrieve a single observation.
# 
# Just like in the last exercise, you can do this in two lines of code, starting with gapminder %>% and having the filter() on the second line. Keeping one verb on each line helps keep the code readable. Note that each time, you'll put the pipe %>% at the end of the first line (like gapminder %>%); putting the pipe at the beginning of the second line will throw an error.
# 
# Instructions
# 100 XP
# Filter the gapminder data to retrieve only the observation from China in the year 2002.

library(gapminder)
library(dplyr)

# Filter for China in 2002
gapminder %>%
  filter(country == 'China', year == 2002)
