# Selection of matrix elements
# Similar to vectors, you can use the square brackets [ ] to select one or multiple elements from a matrix. Whereas vectors have one dimension, matrices have two dimensions. You should therefore use a comma to separate the rows you want to select from the columns. For example:
#   
#   my_matrix[1,2] selects the element at the first row and second column.
# my_matrix[1:3,2:4] results in a matrix with the data on the rows 1, 2, 3 and columns 2, 3, 4.
# If you want to select all elements of a row or a column, no number is needed before or after the comma, respectively:
#   
#   my_matrix[,1] selects all elements of the first column.
# my_matrix[1,] selects all elements of the first row.
# Back to Star Wars with this newly acquired knowledge! As in the previous exercise, all_wars_matrix is already available in your workspace.
# 
# Instructions
# 100 XP
# Instructions
# 100 XP
# Select the non-US revenue for all movies (the entire second column of all_wars_matrix), store the result as non_us_all.
# Use mean() on non_us_all to calculate the average non-US revenue for all movies. Simply print out the result.
# This time, select the non-US revenue for the first two movies in all_wars_matrix. Store the result as non_us_some.
# Use mean() again to print out the average of the values in non_us_some.

# all_wars_matrix is available in your workspace
all_wars_matrix

# Select the non-US revenue for all movies
non_us_all <- all_wars_matrix[,2]

# Average non-US revenue
mean(non_us_all)

# Select the non-US revenue for first two movies
non_us_some <- all_wars_matrix[1:2,2]

# Average non-US revenue for first two movies
mean(non_us_some)