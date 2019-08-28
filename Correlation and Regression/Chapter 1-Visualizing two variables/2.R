# Boxplots as discretized/conditioned scatterplots
# If it is helpful, you can think of boxplots as scatterplots for which the variable on the x-axis has been discretized.
# 
# The cut() function takes two arguments: the continuous variable you want to discretize and the number of breaks that you want to make in that continuous variable in order to discretize it.
# 
# Instructions
# 100 XP
# Using the ncbirths dataset again, make a boxplot illustrating how the birth weight of these babies varies according to the number of weeks of gestation. This time, use the cut() function to discretize the x-variable into six intervals (i.e. five breaks).

# Boxplot of weight vs. weeks
ggplot(data = ncbirths, 
       aes(x = cut(weeks, breaks = 5), y = weight)) + 
  geom_boxplot()