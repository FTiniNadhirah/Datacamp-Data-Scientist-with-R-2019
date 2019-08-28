# The lm summary output
# An "lm" object contains a host of information about the regression model that you fit. There are various ways of extracting different pieces of information.
# 
# The coef() function displays only the values of the coefficients. Conversely, the summary() function displays not only that information, but a bunch of other information, including the associated standard error and p-value for each coefficient, the R2, adjusted R2, and the residual standard error. The summary of an "lm" object in R is very similar to the output you would see in other statistical computing environments (e.g. Stata, SPSS, etc.)
# 
# Instructions
# 100 XP
# Instructions
# 100 XP
# We have already created the mod object, a linear model for the weight of individuals as a function of their height, using the bdims dataset and the code
# 
# mod <- lm(wgt ~ hgt, data = bdims)
# Now, you will:
#   
#   Use coef() to display the coefficients of mod.
# Use summary() to display the full regression output of mod.

# Show the coefficients
coef(mod)

# Show the full output
summary(mod)