# Summarizing the median life expectancy
# You've seen how to find the mean life expectancy and the total population across a set of observations, but mean() and sum() are only two of the functions R provides for summarizing a collection of numbers. Here, you'll learn to use the median() function in combination with summarize().
# 
# By the way, dplyr displays some messages when it's loaded that we've been hiding so far. They'll show up in red and start with:
# 
# Attaching package: 'dplyr'
# 
# The following objects are masked from 'package:stats':
# This will occur in future exercises each time you load dplyr: it's mentioning some built-in functions that are overwritten by dplyr. You won't need to worry about this message within this course.
# 
# Instructions
# 100 XP
# Use the median() function within a summarize() to find the median life expectancy. Save it into a column called medianLifeExp.
library(gapminder)
library(dplyr)

# Summarize to find the median life expectancy
gapminder %>%
  summarize(medianLifeExp = median(lifeExp))