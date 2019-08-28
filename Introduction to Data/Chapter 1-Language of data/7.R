# Visualizing numerical and categorical data
# In this exercise, we'll visualize the relationship between two numerical variables from the email50 dataset, conditioned on whether or not the email was spam. This means that we will use an aspect of the plot (like color or shape) to identify the levels in the spam variable so that we can compare plotted values between them.
# 
# Recall that in the ggplot() function, the first argument is the dataset, then we map the aesthetic features of the plot to variables in the dataset, and finally the geom_*() layer informs how data are represented on the plot. In this exercise, we will make a scatterplot by adding a geom_point() layer to the ggplot() call.
# 
# Instructions
# 100 XP
# Instructions
# 100 XP
# Create a scatterplot of number of exclamation points (exclaim_mess) on the y-axis vs. number of characters (num_char) on the x-axis.
# 
# Color points by whether or not the email is spam.
# Note that the spam variable is stored as numerical (0/1) but we want to use it as a categorical variable in this plot. To do this, force R to think of it as such with the factor() function.
# Based on the plot, does there appear to be a relationship between these variables?

# Load ggplot2
library(ggplot2)

# Scatterplot of exclaim_mess vs. num_char
ggplot(email50, aes(x = num_char, y = exclaim_mess, color = factor(spam))) +
  geom_point()