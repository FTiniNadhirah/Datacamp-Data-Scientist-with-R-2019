# Getting number of levels
# mutate() and summarise() in dplyr both have variants where you can add the suffix if or all to change the operation. mutate_if() and summarise_if apply their second argument, a function, to all columns where the first argument is true, and mutate_all() and summarise_all take one argument, a function, and apply it to all columns.
# 
# We'll use these along with tidyr to get the number of levels for each factor variable in multiple_choice_responses. gather() from tidyr takes a dataset from wide to long format. Its two arguments are the new column names - one contain the old column names and one all the values.
# 
# Instructions
# 100 XP
# Change all the character columns to factor columns and save the new dataset as responses_as_factors.
# Create a new dataset, number_of_levels, where you:
# Use summarise_all to apply the function nlevels to each column.
# Change the dataset's format from wide to long.

# Change all the character columns to factors
responses_as_factors <- multiple_choice_responses %>%
  mutate_if(is.character, as.factor)

number_of_levels <- responses_as_factors %>%
  # apply the function nlevels to each column
  summarise_all(nlevels) %>%
  # change the dataset from wide to long
  gather(variable, num_levels)