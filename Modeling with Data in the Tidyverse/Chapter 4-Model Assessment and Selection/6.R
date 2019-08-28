# Exercise
# Exercise
# Fitting model to training data
# It's time to split your data into a training set to fit a model and a separate test set to evaluate the predictive power of the model. Before making this split however, we first sample 100% of the rows of house_prices without replacement and assign this to house_prices_shuffled. This has the effect of "shuffling" the rows, thereby ensuring that the training and test sets are randomly sampled.
# 
# Instructions 1/2
# 50 XP
# 1
# 2
# Use slice() to set train to the first 10,000 rows of house_prices_shuffled and test to the remainder of the 21,613 rows.
# 
# Set random number generator seed value for reproducibility
set.seed(76)

# Randomly reorder the rows
house_prices_shuffled <- house_prices %>% 
  sample_frac(size = 1, replace = FALSE)

# Train/test split
train <- house_prices_shuffled %>%
  slice(1:10000)

test <- house_prices_shuffled %>%
  slice(10001:21613)

# 
# 
# Now fit a linear regression to predict log10_price using log10_size and bedrooms using just the training data.

# Set random number generator seed value for reproducibility
set.seed(76)

# Randomly reorder the rows
house_prices_shuffled <- house_prices %>% 
  sample_frac(size = 1, replace = FALSE)

# Train/test split
train <- house_prices_shuffled %>%
  slice(1:10000)
test <- house_prices_shuffled %>%
  slice(10001:21613)

# Fit model to training set
train_model_2 <- lm(log10_price ~ log10_size + bedrooms,
                    data = train)
