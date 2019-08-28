# Exercise
# Exercise
# Preserving the most common levels
# Sometimes you don't want to keep levels by proportion but instead the most common n levels. Let's see how the resulting levels kept for MLMethodNextYearSelect changes when we kept by number instead of proportion. multiple_choice_responses has been loaded for you.
# 
# Instructions
# 100 XP
# Remove people who didn't select a method.
# Create a new variable, ml_method, from MLMethodNextYearSelect that preserves 5 most common titles and lumps the rest as "other method" using the argument other_level.
# Count the frequency of each ml_method, sorting in descending order.

multiple_choice_responses %>%
  # remove NAs 
  filter(!is.na(MLMethodNextYearSelect)) %>%
  # create ml_method, retaining the 5 most common methods and renaming others "other method" 
  mutate(ml_method = fct_lump(MLMethodNextYearSelect, n = 5, other_level = "other method")) %>%
  # count the frequency of your new variable, sorted in descending order
  count(ml_method, sort = TRUE)