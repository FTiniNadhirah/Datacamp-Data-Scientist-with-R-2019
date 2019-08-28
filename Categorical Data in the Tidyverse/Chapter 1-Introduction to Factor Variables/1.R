# Exercise
# Exercise
# Recognizing factor variables
# In the introductory video, you learned how to identify qualitative variables both in theory and in R. There are two ways R can represent qualitative variables: as factors or as characters. In this exercise, you'll try the two methods to find if CurrentJobTitleSelect is a factor. The dataset multiple_choice_responses has been loaded for you.
# 
# Instructions
# 70 XP
# Print out the dataset in the console to take a look at the column types.
# Check if CurrentJobTitleSelect is a factor.


# Print out the dataset
multiple_choice_responses

# Check if CurrentJobTitleSelect is a factor
is.factor(multiple_choice_responses$CurrentJobTitleSelect)