# Computing fitted/predicted values & residuals
# Now say you want to repeat this for all 463 instructors in evals. Doing this manually as you just did would be long and tedious, so as seen in the video, let's automate this using the get_regression_points() function.
# 
# Furthemore, let's unpack its output.
# 
# Instructions 1/3
# 33 XP
# 3
# Let's once again get the regression table for model_score_2.
# Apply get_regression_points() from the moderndive package to automate making predictions and computing residuals.
# 
# Fit regression model
model_score_2 <- lm(score ~ bty_avg, data = evals)

# Get regression table
get_regression_table(model_score_2)

# Get all fitted/predicted values and residuals
get_regression_points(model_score_2) 
# 

# Let's unpack the contents of the score_hat column. First, run the code that fits the model and outputs the regression table.
# Add a new column score_hat_2 which replicates how score_hat is computed using the table's values.
# 
# Fit regression model
model_score_2 <- lm(score ~ bty_avg, data = evals)

# Get regression table
get_regression_table(model_score_2)

# Get all fitted/predicted values and residuals
get_regression_points(model_score_2) %>% 
  mutate(score_hat_2 = 3.88 + 0.067 * bty_avg) 

# Now let's unpack the contents of the residual column. First, run the code that fits the model and outputs the regression table.
# Add a new column residual_2 which replicates how residual is computed using the table's values.

# Fit regression model
model_score_2 <- lm(score ~ bty_avg, data = evals)

# Get regression table
get_regression_table(model_score_2)

# Get all fitted/predicted values and residuals
get_regression_points(model_score_2) %>% 
  mutate(residual_2 = score - score_hat)