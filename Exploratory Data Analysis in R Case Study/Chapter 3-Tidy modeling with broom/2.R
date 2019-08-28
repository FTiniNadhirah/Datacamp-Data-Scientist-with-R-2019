# Tidying a linear regression model
# In the last section, you fit a linear model. Now, you'll use the tidy() function in the broom package to turn that model into a tidy data frame.
# 
# Instructions
# 100 XP
# The US_fit linear model is available in your workspace.
# 
# Load the broom package.
# Use the tidy() function from broom on the model object to turn it into a tidy data frame. Don't store the result; just print the output to the console.

# Load the broom package
library(broom)

# Call the tidy() function on the US_fit object
tidy(US_fit)
