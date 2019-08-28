# Leverage
# The leverage of an observation in a regression model is defined entirely in terms of the distance of that observation from the mean of the explanatory variable. That is, observations close to the mean of the explanatory variable have low leverage, while observations far from the mean of the explanatory variable have high leverage. Points of high leverage may or may not be influential.
# 
# The augment() function from the broom package will add the leverage scores (.hat) to a model data frame.
# 
# Instructions
# 100 XP
# Use augment() to list the top 6 observations by their leverage scores, in descending order.
# 

# Rank points of high leverage
mod %>%
  augment %>%
  arrange(desc(.hat)) %>%
  head()