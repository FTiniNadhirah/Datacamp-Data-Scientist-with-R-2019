# Selection of data frame elements
# Similar to vectors and matrices, you select elements from a data frame with the help of square brackets [ ]. By using a comma, you can indicate what to select from the rows and the columns respectively. For example:
#   
#   my_df[1,2] selects the value at the first row and second column in my_df.
# my_df[1:3,2:4] selects rows 1, 2, 3 and columns 2, 3, 4 in my_df.
# Sometimes you want to select all elements of a row or column. For example, my_df[1, ] selects all elements of the first row. Let us now apply this technique on planets_df!
#   
#   Instructions
# 100 XP
# Instructions
# 100 XP
# From planets_df, select the diameter of Mercury: this is the value at the first row and the third column. Simply print out the result.
# From planets_df, select all data on Mars (the fourth row). Simply print out the result.

# The planets_df data frame from the previous exercise is pre-loaded

# Print out diameter of Mercury (row 1, column 3)
planets_df[1,3]

# Print out data for Mars (entire fourth row)
planets_df[4,]
