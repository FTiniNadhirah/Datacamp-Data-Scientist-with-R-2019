# sapply with your own function
# Like lapply(), sapply() allows you to use self-defined functions and apply them over a vector or a list:
#   
#   sapply(X, FUN, ...)
# Here, FUN can be one of R's built-in functions, but it can also be a function you wrote. This self-written function can be defined before hand, or can be inserted directly as an anonymous function.
# 
# Instructions
# 100 XP
# Finish the definition of extremes_avg(): it takes a vector of temperatures and calculates the average of the minimum and maximum temperatures of the vector.
# Next, use this function inside sapply() to apply it over the vectors inside temp.
# Use the same function over temp with lapply() and see how the outputs differ.

# temp is already defined in the workspace

# temp is already defined in the workspace

# Finish function definition of extremes_avg
extremes_avg <- function(x) {
  ( min(x) + max(x)) / 2
}

# Apply extremes_avg() over temp using sapply()
sapply(temp, extremes_avg)

# Apply extremes_avg() over temp using lapply()
lapply(temp, extremes_avg)