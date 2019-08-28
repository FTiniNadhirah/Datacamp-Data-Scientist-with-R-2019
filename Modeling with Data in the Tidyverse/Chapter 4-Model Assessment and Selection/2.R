# Exercise
# Exercise
# Computing the R-squared of a model
# Let's compute the R2 summary value for the two numerical explanatory/predictor variable model you fit in the Chapter 3, price as a function of size and the number of bedrooms.
# 
# Recall that R2 can be calculated as:
# 
# 1???Var(residuals)Var(y)
# Instructions
# 100 XP
# Compute R2 by summarizing the residual and log10_price columns.


# Fit model
model_price_2 <- lm(log10_price ~ log10_size + bedrooms,
                    data = house_prices)

# Get fitted/values & residuals, compute R^2 using residuals
get_regression_points(model_price_2) %>%
  summarize(r_squared = 1 - var(residual) / var(log10_price))