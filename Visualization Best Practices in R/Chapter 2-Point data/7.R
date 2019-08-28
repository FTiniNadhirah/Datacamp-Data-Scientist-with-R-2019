# Exercise
# Exercise
# Cleaning up the bars
# The changes we made to the last plot are great and improved it immensely, but we can go further!
#   
#   We seem to have a few countries that have zero counts for the cases. Let's get rid of these to free up even more space for the country names to breath.
# 
# In addition, let's get rid of the unnecessary horizontal lines that are cluttering up the background.
# 
# The dataframe amr_pertussis that we made in the last exercise is already loaded for you.
# 
# Instructions
# 100 XP
# Add a filter() to amr_pertussis so we only have countries that had more than zero cases.
# Using the theme() function, remove the horizontal grid lines panel.grid.major.y from the background.

amr_pertussis %>% 
  # filter to countries that had > 0 cases. 
  filter(cases > 0) %>% 
  ggplot(aes(x = reorder(country, cases), y = cases)) +
  geom_col() +
  coord_flip() +
  theme(
    # get rid of the 'major' y grid lines
    panel.grid.major.y = element_blank()
  )