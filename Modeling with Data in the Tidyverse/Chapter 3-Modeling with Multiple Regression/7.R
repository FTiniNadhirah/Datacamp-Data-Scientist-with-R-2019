# Automating predictions on "new" houses
# Let's now repeat what you did in the last exercise, but in an automated fashion assuming the information on these "new" houses is saved in a dataframe.
# 
# Your model for log10_price as a function of log10_size and the binary variable waterfront (model_price_4) is available in your workspace, and so is new_houses_2, a dataframe with data on 2 new houses. While not so beneficial with only 2 "new" houses, this will save a lot of work if you had 2000 "new" houses.
# 
# 
# Apply get_regression_points() as you would normally, but with the newdata argument set to our two "new" houses. This returns predicted values for just those houses.
# 
# View the "new" houses
new_houses_2

# Get predictions on "new" houses
get_regression_points(model_price_4, newdata = new_houses_2) 
# 
# 
# Instructions 2/2
# 50 XP
# Now take these two predictions in log10_price_hat and return a new column, price_hat, consisting of fitted price in dollars.
# 
# View the "new" houses
new_houses_2

# Get predictions price_hat in dollars on "new" houses
get_regression_points(model_price_4, newdata = new_houses_2) %>% 
  mutate(price_hat = 10^log10_price_hat) 
# 
