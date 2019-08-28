# Exercise
# Exercise
# Dichotomizing variables
# Now that we've cleaned up our question names, let's work on the response variable. In the original analysis, they looked at the percent of people considering a behavior somewhat or very rude. To replicate this, we'll need to change our rude variable from the current responses to one that combines the somewhat and very rude answers.
# 
# Instructions
# 100 XP
# Remove rows with NA in the value column
# Create a new variable, rude, which is 0 if the value column is "No, not rude at all" or "No, not at all rude" and 1 otherwise.


dichotimized_data <- gathered_data %>%
  mutate(response_var = str_replace(response_var, '.*rude to ', '')) %>%
  mutate(response_var = str_replace(response_var, 'on a plane', '')) %>%
  # Remove rows that are NA in the value column
  filter(!is.na(value)) %>%
  # Dichotomize the value variable to make a new variable, rude
  mutate(rude = if_else(value %in% c('No, not rude at all', 'No, not at all rude'), 0, 1))