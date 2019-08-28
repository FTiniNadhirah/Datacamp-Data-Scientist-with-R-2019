# Fitting a regression
# house_prices, which is available in your environment, has the log base 10 transformed variables included and the outlier house with 33 bedrooms removed. Let's fit a multiple regression model of price as a function of size and the number of bedrooms and generate the regression table. In this exercise, you will first fit the model, and based on the regression table, in the second part, you will answer the following question:
# 
# Which of these interpretations of the slope coefficent for bedrooms is correct?
# 
# Instructions 1/2
# Fit a linear model lm with log10_price as a function of log10_size and bedrooms.
# Print the regression table.

# Fit model
model_price_2 <- lm(log10_price ~ log10_size + bedrooms, 
                    data = house_prices)

# Get regression table
get_regression_table(model_price_2)