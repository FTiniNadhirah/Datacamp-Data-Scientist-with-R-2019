# Fitting a regression with a numerical x
# Let's now explicity quantify the linear relationship between score and bty_avg using linear regression. You will do this by first "fitting" the model. Then you will get the regression table, a standard output in many statistical software packages. Finally, based on the output of get_regression_table(), which interpretation of the slope coefficient is correct?
# 
# Instructions 1/3
# 33 XP
# 1
# 2
# 3
# Fit a linear regression model between score and average beauty using the lm() function and save this model to model_score_2.
# 
# Load package
library(moderndive)

# Fit model
model_score_2 <- lm(score ~ bty_avg, data = evals)

# Output content
model_score_2 
# 
# Given the sparsity of the output, let's get the regression table using the get_regression_table() wrapper function.


# Load package
library(moderndive)

# Fit model
model_score_2 <- lm(score ~ bty_avg, data = evals)

# Output regression table
get_regression_table(model_score_2)