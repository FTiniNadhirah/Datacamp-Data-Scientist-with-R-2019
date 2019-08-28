# Use lapply with your own function
# As Filip explained in the instructional video, you can use lapply() on your own functions as well. You just need to code a new function and make sure it is available in the workspace. After that, you can use the function inside lapply() just as you did with base R functions.
# 
# In the previous exercise you already used lapply() once to convert the information about your favorite pioneering statisticians to a list of vectors composed of two character strings. Let's write some code to select the names and the birth years separately.
# 
# The sample code already includes code that defined select_first(), that takes a vector as input and returns the first element of this vector.
# 
# Instructions
# 100 XP
# Apply select_first() over the elements of split_low with lapply() and assign the result to a new variable names.
# Next, write a function select_second() that does the exact same thing for the second element of an inputted vector.
# Finally, apply the select_second() function over split_low and assign the output to the variable years.

# Code from previous exercise:
pioneers <- c("GAUSS:1777", "BAYES:1702", "PASCAL:1623", "PEARSON:1857")
split <- strsplit(pioneers, split = ":")
split_low <- lapply(split, tolower)

# Write function select_first()
select_first <- function(x) {
  x[1]
}

names <- lapply(split_low, select_first)

# Write function select_second()
select_second <- function(x) {
  x[2]
}

# Apply select_second() over split_low: years
years <- lapply(split_low, select_second)