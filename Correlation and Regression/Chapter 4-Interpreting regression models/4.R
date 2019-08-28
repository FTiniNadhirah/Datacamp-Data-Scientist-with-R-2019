# Tidying your linear model
# As you fit a regression model, there are some quantities (e.g. R2) that apply to the model as a whole, while others apply to each observation (e.g. y^i). If there are several of these per-observation quantities, it is sometimes convenient to attach them to the original data as new variables.
# 
# The augment() function from the broom package does exactly this. It takes a model object as an argument and returns a data frame that contains the data on which the model was fit, along with several quantities specific to the regression model, including the fitted values, residuals, leverage scores, and standardized residuals.
# 
# Instructions
# 100 XP
# The same linear model from the last exercise, mod, is available in your workspace.
# 
# Load the broom package.
# Create a new data frame called bdims_tidy that is the augmentation of the mod linear model.
# View the bdims_tidy data frame using glimpse().

# Load broom
library(broom)

# Create bdims_tidy
bdims_tidy <- augment(mod)

# Glimpse the resulting data frame
glimpse(bdims_tidy)
