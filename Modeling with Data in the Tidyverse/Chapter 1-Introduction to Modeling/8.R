# Exercise
# Exercise
# Predicting house price with waterfront
# You just saw that houses with a view of the waterfront tend to be much more expensive. But by how much? Let's compute group means of log10_price, convert them back to dollar units, and compare!
# 
# The variable log10_price has already been added to house_prices for you.
# 
# Instructions 1/2
# 50 XP
# 2
# Return both the mean of log10_price and the count of houses in each level of waterfront.
# 
# Calculate stats
house_prices %>%
  group_by(waterfront) %>%
  summarize(mean_log10_price = mean(log10_price), n = n())

# 
# 
# Using these group means for log10_price, return "good" predicted house prices in the original units of US dollars.


# Calculate stats
house_prices %>%
  group_by(waterfront) %>%
  summarize(mean_log10_price = mean(log10_price), n = n())

# Prediction of price for houses without view of waterfront
10^(5.66)

# Prediction of price for houses with view of waterfront
10^(6.12)