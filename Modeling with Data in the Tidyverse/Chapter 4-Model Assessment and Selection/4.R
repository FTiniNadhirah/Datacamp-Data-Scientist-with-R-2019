# Computing the MSE & RMSE of a model
# Just as you did earlier with R2, which is a measure of model fit, let's now compute the root mean square error (RMSE) of our models, which is a commonly used measure of preditive error. Let's use the model of price as a function of size and number of bedrooms.
# 
# The model is available in your workspace as model_price_2.
# 
# Instructions 1/2
# 50 XP
# Let's start by computing the mean squared error (mse), which is the mean of the squared residual.
# 
# Get all residuals, square them, and take mean                    
get_regression_points(model_price_2) %>%
  mutate(sq_residuals = residual^2) %>%
  summarize(mse = mean(sq_residuals)) 
# 
# Now that you've computed the mean squared error, let's compute the root mean squared error.
# 
# Get all residuals, square them, take the mean and square root
get_regression_points(model_price_2) %>%
  mutate(sq_residuals = residual^2) %>%
  summarize(mse = mean(sq_residuals)) %>% 
  mutate(rmse = sqrt(mse))
