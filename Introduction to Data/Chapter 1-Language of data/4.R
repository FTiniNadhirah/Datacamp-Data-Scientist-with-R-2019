# Complete filtering based on a factor
# The droplevels() function removes unused levels of factor variables from our dataset. As we saw in the video, it's often useful to determine which levels are unused (i.e. contain zero values) with the table() function.
# 
# In this exercise, we'll see which levels of the number variable are dropped after applying the droplevels() function.
# 
# Instructions
# 100 XP
# Instructions
# 100 XP
# Make a table() of the number variable in the email50_big dataset. Which two levels are unused?
#   Apply the droplevels() function to the number variable. Assign the result back to email50_big$number.
# Remake the table() of the number variable in the email50_big dataset. How is this output different from the first?

# Table of number variable
table(email50_big$number)

email50_big$number <- droplevels(email50_big$number)

# Another table of number variable
table(email50_big$number)