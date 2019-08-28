# High leverage points
# Not all points of high leverage are influential. While the high leverage observation corresponding to Bobby Scales in the previous exercise is influential, the three observations for players with OBP and SLG values of 0 are not influential.
# 
# This is because they happen to lie right near the regression anyway. Thus, while their extremely low OBP gives them the power to exert influence over the slope of the regression line, their low SLG prevents them from using it.
# 
# Instructions
# 100 XP
# The linear model, mod, is available in your workspace. Use a combination of augment(), arrange() with two arguments, and head() to find the top 6 observations with the highest leverage but the lowest Cook's distance.

# Rank high leverage points

mod %>%
  augment() %>%
  arrange(desc(.hat), .cooksd) %>%
  head()