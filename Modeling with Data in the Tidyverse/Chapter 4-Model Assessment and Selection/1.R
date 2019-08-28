# Refresher: sum of squared residuals
# Let's remind you how to compute the sum of squared residuals. You'll do this for two models.
# 
# Instructions 1/2
# 50 XP
# Use the appropriate function to get a dataframe with the residuals for model_price_2.
# Add a new column of squared residuals called sq_residuals.
# Then summarize sq_residuals with their sum. Call this sum sum_sq_residuals.
# 
# Model 2
model_price_2 <- lm(log10_price ~ log10_size + bedrooms, 
                    data = house_prices)

# Calculate squared residuals
get_regression_points(model_price_2) %>%
  mutate(sq_residuals = residual^2) %>%
  summarize(sum_sq_residuals = sum(sq_residuals))
# 
# Compute the sum of squared residuals for model_price_4 which uses the categorical variable waterfront instead of the numerical variable bedrooms.

# Model 4
model_price_4 <- lm(log10_price ~ log10_size + waterfront, 
                    data = house_prices)

# Calculate squared residuals
get_regression_points(model_price_4) %>%
  mutate(sq_residuals = residual^2) %>%
  summarize(sum_sq_residuals = sum(sq_residuals))