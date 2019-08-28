# Fitting simple linear models
# While the geom_smooth(method = "lm") function is useful for drawing linear models on a scatterplot, it doesn't actually return the characteristics of the model. As suggested by that syntax, however, the function that creates linear models is lm(). This function generally takes two arguments:
# 
# A formula that specifies the model
# A data argument for the data frame that contains the data you want to use to fit the model
# The lm() function return a model object having class "lm". This object contains lots of information about your regression model, including the data used to fit the model, the specification of the model, the fitted values and residuals, etc.
# 
# Instructions
# 100 XP
# Instructions
# 100 XP
# Using the bdims dataset, create a linear model for the weight of people as a function of their height.
# Using the mlbBat10 dataset, create a linear model for SLG as a function of OBP.
# Using the mammals dataset, create a linear model for the body weight of mammals as a function of their brain weight, after taking the natural log of both variables.

# Linear model for weight as a function of height
lm(wgt ~ hgt, data = bdims)

# Linear model for SLG as a function of OBP
lm(SLG ~ OBP, data = mlbBat10)

# Log-linear model for body weight as a function of brain weight
lm(log(BodyWt) ~ log(BrainWt), data = mammals)