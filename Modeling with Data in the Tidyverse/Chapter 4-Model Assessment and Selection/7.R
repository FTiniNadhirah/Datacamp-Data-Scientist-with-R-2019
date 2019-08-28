# Predicting on test data
# Now that you've trained the model on the train set, let's apply the model to the test data, make predictions, and evaluate the predictions. Recall that having a separate test set here simulates the gathering of a "new" independent dataset to test our model's predictive performance on.
# 
# The datasets train and test, and the trained model, train_model_2 are available in your workspace.
# 
# Instructions 1/2
# 50 XP
# 1
# 2
# Use the get_regression_points() function to apply train_model_2 on your new dataset: test.
# 
# Make predictions on test set
get_regression_points(train_model_2, newdata = test)

# 
# 
# Compute the root mean square error using this output.
# 
# 
# Make predictions on test set
get_regression_points(train_model_2, newdata = test)

# Compute RMSE
get_regression_points(train_model_2, newdata = test) %>% 
  mutate(sq_residuals = residual^2) %>%
  summarize(rmse = sqrt(mean(sq_residuals)))
