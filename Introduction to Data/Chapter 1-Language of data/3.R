# Filtering based on a factor
# Categorical data are often stored as factors in R. In this exercise, we'll practice working with a factor variable, number, from the email50 dataset. This variable tells us what type of number (none, small, or big) an email contains.
# 
# Recall from the video that the filter() function from dplyr can be used to filter a dataset to create a subset containing only certain levels of a variable. For example, the following code filters the mtcars dataset for cars containing 6 cylinders:
# 
# mtcars %>%
#   filter(cyl == 6)
# Instructions
# 100 XP
# Instructions
# 100 XP
# Create a new dataset called email50_big that is a subset of the original email50 dataset containing only emails with "big" numbers. This information is stored in the number variable.
# Report the dimensions of email50_big using the glimpse() function again. How many emails contain big numbers?

# Subset of emails with big numbers: email50_big
email50_big <- email50 %>%
  filter(number == "big")

# Glimpse the subset
glimpse(email50_big)