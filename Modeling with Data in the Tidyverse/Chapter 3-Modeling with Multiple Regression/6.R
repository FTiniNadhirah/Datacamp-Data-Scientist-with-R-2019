# Making predictions using size and waterfront
# Using your model for log10_price as a function of log10_size and the binary variable waterfront, let's make some predictions! Say you have the two following "new" houses, what would you predict their prices to be in dollars?
# 
# House A: log10_size = 2.9 that has a view of the waterfront
# House B: log10_size = 3.1 that does not have a view of the waterfront
# We make the corresponding visual predictions below:
# 
# 
# 
# Instructions
# 
# Instructions
# 
# After running the code on line 2 to get the regression table based on model_price_4, compute the predicted prices for both houses. First you'll use an equation based on values in this regression table to get a predicted value in log10 dollars, then raise 10 to this predicted value to get a predicted value in dollars.
# 
# Get regression table
get_regression_table(model_price_4)

# Prediction for House A
10^(2.96 + 0.825 * 2.9 + 0.322)

# Prediction for House B
10^(2.96 + 0.825 * 3.1)