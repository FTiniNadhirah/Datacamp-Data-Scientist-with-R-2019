# Write your own function
# Wow, things are getting serious... you're about to write your own function! Before you have a go at it, have a look at the following function template:
# 
# my_fun <- function(arg1, arg2) {
#   body
# }
# Notice that this recipe uses the assignment operator (<-) just as if you were assigning a vector to a variable for example. This is not a coincidence. Creating a function in R basically is the assignment of a function object to a variable! In the recipe above, you're creating a new R variable my_fun, that becomes available in the workspace as soon as you execute the definition. From then on, you can use the my_fun as a function.
# 
# Instructions
# 100 XP
# Create a function pow_two(): it takes one argument and returns that number squared (that number times itself).
# Call this newly defined function with 12 as input.
# Next, create a function sum_abs(), that takes two arguments and returns the sum of the absolute values of both arguments.
# Finally, call the function sum_abs() with arguments -2 and 3 afterwards.

# Create a function pow_two()
pow_two <- function(x) {
  x^2
}

# Use the function
pow_two(12)
## [1] 144
# Create a function sum_abs()
sum_abs <- function(x, y) {
  abs(x) + abs(y)
}

# Use the function
sum_abs(-2, 3)