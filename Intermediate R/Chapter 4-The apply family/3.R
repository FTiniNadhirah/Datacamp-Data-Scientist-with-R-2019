# lapply and anonymous functions
# Writing your own functions and then using them inside lapply() is quite an accomplishment! But defining functions to use them only once is kind of overkill, isn't it? That's why you can use so-called anonymous functions in R.
# 
# Previously, you learned that functions in R are objects in their own right. This means that they aren't automatically bound to a name. When you create a function, you can use the assignment operator to give the function a name. It's perfectly possible, however, to not give the function a name. This is called an anonymous function:
#   
#   # Named function
#   triple <- function(x) { 3 * x }
# 
# # Anonymous function with same implementation
# function(x) { 3 * x }
# 
# # Use anonymous function inside lapply()
# lapply(list(1,2,3), function(x) { 3 * x })
# split_low is defined for you.
# 
# Instructions
# 100 XP
# Transform the first call of lapply() such that it uses an anonymous function that does the same thing.
# In a similar fashion, convert the second call of lapply to use an anonymous version of the select_second() function.
# Remove both the definitions of select_first() and select_second(), as they are no longer useful.

# split_low has been created for you
split_low

# Transform: use anonymous function inside lapply
names <- lapply(split_low, function(x) x[1])

# Transform: use anonymous function inside lapply
years <- lapply(split_low, function(x) x[2])