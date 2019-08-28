# Comparing the R-squared of two models
# Let's now compute R2 for the one numerical and one categorical explanatory/predictor variable model you fit in the Chapter 3, price as a function of size and whether the house had a view of the waterfront, and compare its R2 with the one you just computed.
# 
# Instructions 1/2
# 50 XP
# 1
# 2
# Compute R2 for model_price_4.
# 
# 
# Fit model
model_price_4 <- lm(log10_price ~ log10_size + waterfront,
                    data = house_prices)

# Get fitted/values & residuals, compute R^2 using residuals
get_regression_points(model_price_4) %>% 
  summarize(r_squared = 1 - var(residual) / var(log10_price))