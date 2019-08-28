# Making predictions using size and bedrooms
# Say you want to predict the price of a house using this model and you know it has:
#   
#   1000 square feet of living space, and
# 3 bedrooms
# What is your prediction both in log10 dollars and then dollars?
#   
#   The regression model from the previous exercise is available in your workspace as model_price_2.
# 
# get_regression_table(model_price_2)
# # A tibble: 3 x 7
# term       estimate std_error statistic p_value lower_ci upper_ci
# <chr>         <dbl>     <dbl>     <dbl>   <dbl>    <dbl>    <dbl>
#   1 intercept     2.69      0.023     116.        0    2.65     2.74 
# 2 log10_size    0.941     0.008     118.        0    0.925    0.957
# 3 bedrooms     -0.033     0.002     -20.5       0   -0.036   -0.03 
# Instructions 1/2
# 
# Using the fitted values of the intercept and slopes from the regression table on the left to predict this house's price in log10 dollars.
# 
# Make prediction in log10 dollars
2.69 + 0.941 * log10(1000) - 0.033 * 3

# 
# 
# Now predict this house's price in dollars.
# 
# Make prediction in log10 dollars
2.69 + 0.941 * log10(1000) - 0.033 * 3

# Make prediction dollars
10^(2.69 + 0.941 * log10(1000) - 0.033 * 3)
# 
# 
