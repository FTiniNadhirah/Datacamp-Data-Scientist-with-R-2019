# Write your own function (3)
#   Do you still remember the difference between an argument with and without default values? Have another look at the sd() function by typing ?sd in the console. The usage section shows the following information:
#   
#   sd(x, na.rm = FALSE)
# This tells us that x has to be defined for the sd() function to be called correctly, however, na.rm already has a default value. Not specifying this argument won't cause an error.
# 
# You can define default argument values in your own R functions as well. You can use the following recipe to do so:
# 
# my_fun <- function(arg1, arg2 = val2) {
#   body
# }
# The editor on the right already includes an extended version of the pow_two() function from before. Can you finish it?
# 
# Instructions
# 100 XP
# Instructions
# 100 XP
# Add an optional argument, named print_info, that is TRUE by default.
# Wrap an if construct around the print() function: this function should only be executed if print_info is TRUE.
# Feel free to experiment with the pow_two() function you've just coded.

# Finish the pow_two() function
pow_two <- function(x, print_info = TRUE) {
  y <- x ^ 2
  if(print_info == TRUE) {
    print(paste(x, "to the power two equals", y))
  }
  return(y)
}
