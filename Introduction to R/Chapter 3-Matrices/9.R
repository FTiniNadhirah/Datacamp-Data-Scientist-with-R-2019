# A little arithmetic with matrices
# Similar to what you have learned with vectors, the standard operators like +, -, /, *, etc. work in an element-wise way on matrices in R.
# 
# For example, 2 * my_matrix multiplies each element of my_matrix by two.
# 
# As a newly-hired data analyst for Lucasfilm, it is your job to find out how many visitors went to each movie for each geographical area. You already have the total revenue figures in all_wars_matrix. Assume that the price of a ticket was 5 dollars. Simply dividing the box office numbers by this ticket price gives you the number of visitors.
# 
# Instructions
# 100 XP
# Divide all_wars_matrix by 5, giving you the number of visitors in millions. Assign the resulting matrix to visitors.
# Print out visitors so you can have a look.

# all_wars_matrix is available in your workspace
all_wars_matrix

# Estimate the visitors
visitors <- all_wars_matrix / 5

# Print the estimate to the console
visitors