# Comparing the RMSE of two models
# As you did using the sum of squared residuals and R2, let's once again assess and compare the quality of your two models using the root mean squared error (RMSE). Note that RMSE is more typically used in prediction settings than explanatory settings.
# 
# model_price_2 and model_price_4 are available in your workspace.
# 
# Instructions 1/2
# 50 XP
# 2
# Based on the code provided that computes MSE and RMSE for model_price_2, compute the MSE and RMSE for model_price_4.


# MSE and RMSE for model_price_2
get_regression_points(model_price_2) %>%
  mutate(sq_residuals = residual^2) %>%
  summarize(mse = mean(sq_residuals), rmse = sqrt(mean(sq_residuals)))

# MSE and RMSE for model_price_4
get_regression_points(model_price_4) %>%
  mutate(sq_residuals = residual^2) %>%
  summarize(mse = mean(sq_residuals)) %>% 
  mutate(rmse = sqrt(mse))