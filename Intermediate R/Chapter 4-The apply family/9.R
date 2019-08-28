# sapply with functions that return NULL
# You already have some apply tricks under your sleeve, but you're surely hungry for some more, aren't you? In this exercise, you'll see how sapply() reacts when it is used to apply a function that returns NULL over a vector or a list.
# 
# A function print_info(), that takes a vector and prints the average of this vector, has already been created for you. It uses the cat() function.
# 
# Instructions
# 100 XP
# Apply print_info() over the contents of temp with sapply().
# Repeat this process with lapply(). Do you notice the difference?

# temp is already available in the workspace

# Definition of print_info()
print_info <- function(x) {
  cat("The average temperature is", mean(x), "\n")
}
# temp is already available in the workspace

# Apply print_info() over temp using sapply()
sapply(temp, print_info)

# Apply print_info() over temp using lapply()
lapply(temp, print_info)