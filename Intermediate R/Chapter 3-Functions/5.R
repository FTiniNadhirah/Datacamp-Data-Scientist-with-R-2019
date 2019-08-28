# Functions inside functions
# You already know that R functions return objects that you can then use somewhere else. This makes it easy to use functions inside functions, as you've seen before:
# 
# speed <- 31
# print(paste("Your speed is", speed))
# Notice that both the print() and paste() functions use the ellipsis - ... - as an argument. Can you figure out how they're used?
#   
#   Instructions
# 100 XP
# Instructions
# 100 XP
# Use abs() on linkedin - facebook to get the absolute differences between the daily Linkedin and Facebook profile views. Place the call to abs() inside mean() to calculate the Mean Absolute Deviation. In the mean() call, make sure to specify na.rm to treat missing values correctly!

# The linkedin and facebook vectors have already been created for you
linkedin <- c(16, 9, 13, 5, NA, 17, 14)
facebook <- c(17, NA, 5, 16, 8, 13, 14)

# Calculate the mean absolute deviation
mean(abs(linkedin - facebook), na.rm = TRUE)