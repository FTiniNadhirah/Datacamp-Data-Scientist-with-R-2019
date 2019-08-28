# Loading data into R
# In the previous video, we saw how to load the hsb2 dataset into R using the data() function and how to preview its contents with str().
# 
# In this exercise, we'll practice on another dataset, email50, which contains a subset of incoming emails for the first three months of 2012 for a single email account. We'll examine the structure of this dataset and determine the number of rows (observations) and columns (variables).
# 
# Instructions
# 100 XP
# Load the email50 dataset with the data() function.
# View the structure of this dataset with the str() function. How many observations and variables are there?

# Load data
data(email50)

# View its structure
str(email50)