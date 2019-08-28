# Influence
# As noted previously, observations of high leverage may or may not be influential. The influence of an observation depends not only on its leverage, but also on the magnitude of its residual. Recall that while leverage only takes into account the explanatory variable (x), the residual depends on the response variable (y) and the fitted value (y^).
# 
# Influential points are likely to have high leverage and deviate from the general relationship between the two variables. We measure influence using Cook's distance, which incorporates both the leverage and residual of each observation.
# 
# Instructions
# 100 XP
# Use augment() to list the top 6 observations by their Cook's distance (.cooksd), in descending order.

# Rank influential points
mod %>%
  augment() %>%
  arrange(desc(.cooksd)) %>%
  head()