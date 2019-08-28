# Parallel slopes model
# Let's now fit a "parallel slopes" model with the numerical explanatory/predictor variable log10_size and the categorical, in this case binary, variable waterfront. The visualization corresponding to this model is below:
# 
# 
# 
# Instructions
# 
# Fit a multiple regression of log10_price using log10_size and waterfront as the predictors. Recall that the data frame that contains these variables is house_prices.

# Fit model
model_price_4 <- lm(log10_price ~ log10_size + waterfront,
                    data = house_prices)

# Get regression table
get_regression_table(model_price_4)