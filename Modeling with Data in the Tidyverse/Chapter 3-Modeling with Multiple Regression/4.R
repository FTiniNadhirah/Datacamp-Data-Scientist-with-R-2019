# Interpreting residuals
# Let's automate this process for all 21K rows in house_prices to obtain residuals, which you'll use to compute the sum of squared residuals: a measure of the lack of fit of a model. After computing the sum of squared residuals, you will answer the following question:
#   
#   Which of these statements about residuals is incorrect?
#   
#   Instructions 1/3
# 33 XP
# 1
# 2
# 3
# Apply the relevant wrapper function to automate computation of fitted/predicted values and hence also residuals for all 21K houses using model_price_2.
# 
# Automate prediction and residual computation
get_regression_points(model_price_2)
# 
# Compute the sum of squared residuals using dplyr commands.
# 
# Automate prediction and residual computation
get_regression_points(model_price_2) %>%
  mutate(sq_residuals = residual^2) %>%
  summarize(sum_sq_residuals = sum(sq_residuals))