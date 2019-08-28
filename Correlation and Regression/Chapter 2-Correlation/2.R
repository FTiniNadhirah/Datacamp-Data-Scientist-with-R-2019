# Exercise
# Exploring Anscombe
# In 1973, Francis Anscombe famously created four datasets with remarkably similar numerical properties, but obviously different graphic relationships. The Anscombe dataset contains the x and y coordinates for these four datasets, along with a grouping variable, set, that distinguishes the quartet.
# 
# It may be helpful to remind yourself of the graphic relationship by viewing the four scatterplots:
#   
#   ggplot(data = Anscombe, aes(x = x, y = y)) +
#   geom_point() +
#   facet_wrap(~ set)
# Instructions
# 100 XP
# For each of the four sets of data points in the Anscombe dataset, compute the following in the order specified. Names are provided in your call to summarize().
# 
# Number of observations, N
# Mean of x
# Standard deviation of x
# Mean of y
# Standard deviation of y
# Correlation coefficient between x and y

# Compute properties of Anscombe
Anscombe %>%
  group_by(set) %>%
  summarize(
    N = n(),
    mean_of_x = mean(x), 
    std_dev_of_x = sd(x), 
    mean_of_y = mean(y), 
    std_dev_of_y = sd(y), 
    correlation_between_x_and_y = cor(x, y)
  )