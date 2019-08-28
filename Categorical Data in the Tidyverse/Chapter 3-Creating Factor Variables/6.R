# case_when() with single variable
# In this lesson, we saw how we could make a categorical variable from a single vector or column using case_when(). Let's try that out with our dataset, multiple_choice_responses, creating a "generation" variable based on people's reported ages.
# 
# We'll use another dplyr function, between, to help us. Combined with filter, between lets us filter for rows that have values between two numbers (inclusive). For example:
# 
# mtcars %>%
#   filter(between(mpg, 10, 20))
# returns all the rows of mtcars where the mpg is between 10 and 20.
# 
# Instructions 1/2
# 50 XP
# 1
# 2
# First, check the min and max of the variable Age, removing NAs.
# 
# Check the min and max of ages
min(multiple_choice_responses$Age, na.rm = TRUE)
max(multiple_choice_responses$Age, na.rm = TRUE) 
# 
# Filter for rows where Age is between 10 and 90.
# Use case_when() to create a new column, generation.
# Get a count of the number of people in each generation.


multiple_choice_responses %>%
  # Filter for rows where Age is between 10 and 90
  filter(between(Age, 10, 90)) %>%
  # Create the generation variable based on age
  mutate(generation = case_when(
    between(Age, 10, 22) ~ "Gen Z", 
    between(Age, 23, 37) ~ "Gen Y", 
    between(Age, 38, 52) ~ "Gen X", 
    between(Age, 53, 71) ~ "Baby Boomer", 
    between(Age, 72, 90) ~ "Silent"
  )) %>%
  # Get a count of how many answers in each generation
  count(generation)