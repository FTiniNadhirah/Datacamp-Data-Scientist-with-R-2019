# Values are variable names
# Our data suffer from a second common symptom of messy data: values are variable names. Specifically, values in the measure column should be variables (i.e. column names) in our dataset.
# 
# The spread() function from tidyr is designed to help with this. To remind you of how this function works, we've loaded another small dataset called df2 (which is the result of applying gather() to the original df from last exercise). Give the following a try before attempting the instructions below.
# 
# spread(df2, time, val)
# Note how the values of the time column now become column names. The tidyr package is already loaded.
# 
# Instructions
# 100 XP
# Instructions
# 100 XP
# Using the code provided, remove the first column of weather2, assigning to without_x.
# Spread the measure column of without_x and save the result to weather3.
# View the result with head().

# First remove column of row names
without_x <- weather2[, -1]

# Spread the data
weather3 <- spread(without_x, measure, value)


# View the head
head(weather3)