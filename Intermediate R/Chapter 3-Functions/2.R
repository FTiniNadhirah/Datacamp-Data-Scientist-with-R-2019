# Use a function
# The documentation on the mean() function gives us quite some information:
#   
#   The mean() function computes the arithmetic mean.
# The most general method takes multiple arguments: x and ....
# The x argument should be a vector containing numeric, logical or time-related information.
# Remember that R can match arguments both by position and by name. Can you still remember the difference? You'll find out in this exercise!
# 
# Once more, you'll be working with the view counts of your social network profiles for the past 7 days. These are stored in the linkedin and facebook vectors and have already been defined in the editor on the right.
# 
# Instructions
# 100 XP
# Instructions
# 100 XP
# Calculate the average number of views for both linkedin and facebook and assign the result to avg_li and avg_fb, respectively. Experiment with different types of argument matching!
#   Print out both avg_li and avg_fb.

# The linkedin and facebook vectors have already been created for you
linkedin <- c(16, 9, 13, 5, 2, 17, 14)
facebook <- c(17, 7, 5, 16, 8, 13, 14)

# Calculate average number of views
avg_li <- mean(linkedin)
avg_fb <- mean(facebook)

# Inspect avg_li and avg_fb
avg_li
avg_fb