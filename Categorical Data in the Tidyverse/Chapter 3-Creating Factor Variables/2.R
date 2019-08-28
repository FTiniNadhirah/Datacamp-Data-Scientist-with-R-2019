# Summarizing data
# Let's now make a faceted plot to compare usefulness across different learning platforms.
# 
# In this exercise, we'll introduce a new dplyrfunction, add_count(). add_count() adds a column to the dataset, n, keeping the same number of rows as the original dataset. Just like count(), n defaults to be the number of rows for each group, but you can change that with the wt (weight) argument. You set wt equal to another column to make n now equal to the sum of that column for each group.
# 
# Let's say you wanted to add a column to iris that is the sum of the Petal.Length for all the flowers of the same Species. You would write:
# 
# iris %>%
#    add_count(Species, wt = Petal.Length) %>%
#    select(Species, Petal.Length, n)
# This would give you back:
# 
# # A tibble: 150 x 3
#    Species Petal.Length     n
#    <fct>          <dbl> <dbl>
#  1 setosa           1.4  73.1
#  2 setosa           1.4  73.1
#  3 virginica        6.4  278.
# Instructions 1/4
# 25 XP
# 1
# 2
# 3
# 4
# Use count() to change the dataset to have one row per learning_platform usefulness pair with a column that is the number of entries with that pairing.
# 
learning_platform_usefulness %>%
  # change dataset to one row per learning_platform usefulness pair with number of entries for each
  count(learning_platform, usefulness) 
# 
# Use add_count() to create a column with the total number of answers to that learning_platform.
# 
learning_platform_usefulness %>%
  # change dataset to one row per learning_platform usefulness pair with number of entries for each
  count(learning_platform, usefulness) %>%
  # use add_count to create column with total number of answers for that learning_platform
  add_count(learning_platform, wt = n) 
# 
# Create a new column, perc, that's the percent of people giving a certain answer for that question. Save everything as a new dataset, perc_useful_platform.
# 
perc_useful_platform <- learning_platform_usefulness %>%
  # change dataset to one row per learning_platform usefulness pair with number of entries for each
  count(learning_platform, usefulness) %>%
  # use add_count to create column with total number of answers for that learning_platform
  add_count(learning_platform, wt = n) %>%
  # create a new column, perc, that is the percentage of people giving that response for that learning_platform
  mutate(perc = n / nn)
# 
# 
# For each learning platform, create a line graph with usefulness on the x-axis and percentage of responses within the learning platforms on the y-axis.

perc_useful_platform <- learning_platform_usefulness %>%
  # change dataset to one row per learning_platform usefulness pair with number of entries for each
  count(learning_platform, usefulness) %>%
  # use add_count to create column with total number of answers for that learning_platform
  add_count(learning_platform, wt = n) %>%
  # create a new column, perc, that is the percentage of people giving that response for that learning_platform
  mutate(perc = n / nn)

# create a line graph for each question with usefulness on x-axis and percentage of responses on y
ggplot(perc_useful_platform, aes(x = usefulness, y = perc, group = learning_platform)) + 
  geom_line() + 
  facet_wrap(~ learning_platform)