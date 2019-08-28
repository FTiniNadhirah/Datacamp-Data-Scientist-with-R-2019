# Visualizing the distribution of residuals
# Let's now compute both the predicted score y^ and the residual y???y^ for all n=463 instructors in the evals dataset. Furthermore, you'll plot a histogram of the residuals and see if there are any patterns to the residuals, i.e. your predictive errors.
# 
# model_score_4 from the previous exercise is available in your workspace.
# 
# Instructions 1/2
# 0 XP
# Apply the function that automates making predictions and computing residuals, and save these values to the dataframe model_score_4_points.
# 
# Calculate predictions and residuals
model_score_4_points <- get_regression_points(model_score_4)
model_score_4_points



# Now take the model_score_4_points dataframe to plot a histogram of the residual column so you can see the distribution of the residuals, i.e., the prediction errors.
# Calculate predictions and residuals
model_score_4_points <- get_regression_points(model_score_4)
model_score_4_points

# Plot residuals
ggplot(model_score_4_points, aes(x = residual)) +
  geom_histogram() +
  labs(x = "residuals", title = "Residuals from score ~ rank model")