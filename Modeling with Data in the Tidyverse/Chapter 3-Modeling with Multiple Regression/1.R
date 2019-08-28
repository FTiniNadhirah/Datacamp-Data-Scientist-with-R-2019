# EDA of relationship
# Unfortunately, making 3D scatterplots to perform an EDA is beyond the scope of this course. So instead let's focus on making standard 2D scatterplots of the relationship between price and the number of bedrooms, keeping an eye out for outliers.
# 
# The log10 transformations have been made for you and are saved in house_prices.
# 
# Instructions 1/2
# Complete the ggplot() code to create a scatterplot of log10_price over bedrooms along with the best-fitting regression line.
# 
# Create scatterplot with regression line
ggplot(house_prices, aes(x = bedrooms, y = log10_price)) +
  geom_point() +
  labs(x = "Number of bedrooms", y = "log10 price") +
  geom_smooth(method = "lm", se = FALSE) 
# 
# 
# There is one house that has 33 bedrooms. While this could truly be the case, given the number of bedrooms in the other houses, this is probably an outlier.
# Remove this outlier using filter() to recreate the plot.

# Remove outlier
house_prices_transform <- house_prices %>% 
  filter(bedrooms < 33)

# Create scatterplot with regression line
ggplot(house_prices_transform, aes(x = bedrooms, y = log10_price)) +
  geom_point() +
  labs(x = "Number of bedrooms", y = "log10 price") +
  geom_smooth(method = "lm", se = FALSE)
