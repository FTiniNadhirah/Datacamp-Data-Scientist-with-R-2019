# Cleaning up strings
# In this lesson, we learned some basics of "regex," or regular expressions, which allow us to capture general patterns. We've covered two notations:
# 
# Expression	Does this
# .	matches any character
# *	zero or more times
# For example, ".*science " would match "data science " in the string "data science rocks!"
# 
# Let's use what we've learned to change the response_var in the dataset you created in the previous lesson, gathered_data.
# 
# Instructions
# 100 XP
# Instructions
# 100 XP
# Use str_remove to remove everything before and including "rude to " (with the space at the end) in the response_var column.
# Use str_remove to remove "on a plane" from the response_var column.


gathered_data %>%
  # Remove everything before and including "rude to " (with that space at the end!)
  mutate(response_var = str_remove(response_var, '.*rude to ')) %>%
  # Remove "on a plane"
  mutate(response_var = str_remove(response_var, 'on a plane'))