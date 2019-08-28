# Selection of data frame elements (2)
# Instead of using numerics to select elements of a data frame, you can also use the variable names to select columns of a data frame.
# 
# Suppose you want to select the first three elements of the type column. One way to do this is
# 
# planets_df[1:3,2]
# A possible disadvantage of this approach is that you have to know (or look up) the column number of type, which gets hard if you have a lot of variables. It is often easier to just make use of the variable name:
#   
#   planets_df[1:3,"type"]
# Instructions
# 100 XP
# Select and print out the first 5 values in the "diameter" column of planets_df.

# The planets_df data frame from the previous exercise is pre-loaded

# Select first 5 values of diameter column
planets_df[1:5, "diameter"]
