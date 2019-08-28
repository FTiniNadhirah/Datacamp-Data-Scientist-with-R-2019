# Making predictions
# The fitted.values() function or the augment()-ed data frame provides us with the fitted values for the observations that were in the original data. However, once we have fit the model, we may want to compute expected values for observations that were not present in the data on which the model was fit. These types of predictions are called out-of-sample.
# 
# The ben data frame contains a height and weight observation for one person. The mod object contains the fitted model for weight as a function of height for the observations in the bdims dataset. We can use the predict() function to generate expected values for the weight of new individuals. We must pass the data frame of new observations through the newdata argument.
# 
# Instructions
# 100 XP
# The same linear model, mod, is defined in your workspace.
# 
# Print ben to the console.
# Use predict() with the newdata argument to compute the expected height of the individual in the ben data frame.

# Print ben
ben

# Predict the weight of ben
predict(mod, newdata = ben)