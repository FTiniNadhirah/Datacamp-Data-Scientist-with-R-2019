# Use a function (3)
#   In the video, Filip guided you through the example of specifying arguments of the sd() function. The sd() function has an optional argument, na.rm that specified whether or not to remove missing values from the input vector before calculating the standard deviation.
# 
# If you've had a good look at the documentation, you'll know by now that the mean() function also has this argument, na.rm, and it does the exact same thing. By default, it is set to FALSE, as the Usage of the default S3 method shows:
#   
#   mean(x, trim = 0, na.rm = FALSE, ...)
# Let's see what happens if your vectors linkedin and facebook contain missing values (NA).
# 
# Instructions
# 100 XP
# Instructions
# 100 XP
# Calculate the average number of LinkedIn profile views, without specifying any optional arguments. Simply print the result to the console.
# Calculate the average number of LinkedIn profile views, but this time tell R to strip missing values from the input vector.

# The linkedin and facebook vectors have already been created for you
linkedin <- c(16, 9, 13, 5, NA, 17, 14)
facebook <- c(17, NA, 5, 16, 8, 13, 14)

# Basic average of linkedin
mean(linkedin)

# Advanced average of linkedin
mean(linkedin, na.rm = TRUE)