# Mathematical utilities
# Have another look at some useful math functions that R features:
#   
#   abs(): Calculate the absolute value.
# sum(): Calculate the sum of all the values in a data structure.
# mean(): Calculate the arithmetic mean.
# round(): Round the values to 0 decimal places by default. Try out ?round in the console for variations of round() and ways to change the number of digits to round to.
# As a data scientist in training, you've estimated a regression model on the sales data for the past six months. After evaluating your model, you see that the training error of your model is quite regular, showing both positive and negative values. The error values are already defined in the workspace on the right (errors).
# 
# Instructions
# 100 XP
# Instructions
# 100 XP
# Calculate the sum of the absolute rounded values of the training errors. You can work in parts, or with a single one-liner. There's no need to store the result in a variable, just have R print it.

# The errors vector has already been defined for you
errors <- c(1.9, -2.6, 4.0, -9.5, -3.4, 7.3)


# Sum of absolute rounded values of errors
sum(round(abs(errors)))