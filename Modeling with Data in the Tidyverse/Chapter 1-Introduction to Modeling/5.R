# EDA of relationship of teaching & "beauty" scores
# The researchers in the UT Austin created a "beauty score" by asking a panel of 6 students to rate the "beauty" of all 463 instructors. They were interested in studying any possible impact of "beauty" of teaching evaluation scores. Let's do an EDA of this variable and its relationship with teaching score.
# 
# From now on, assume that ggplot2, dplyr, and moderndive are all available in your workspace unless you're told otherwise.
# 
# Instructions 1/3
# 33 XP
# 1
# 2
# 3
# Create a histogram of bty_avg "beauty scores" with bins of size 0.5.
# 
# Plot the histogram
ggplot(evals, aes(x = bty_avg)) +
  geom_histogram(binwidth = 0.5) +
  labs(x = "Beauty score", y = "count")


# Create a scatterplot with the outcome variable score on the y-axis and the explanatory variable bty_avg on the x-axis.
# 
# Scatterplot
ggplot(evals, aes(x = bty_avg, y =score )) +
  geom_point() +
  labs(x = "beauty score", y = "teaching score") 

# Let's now investigate if this plot suffers from overplotting, whereby points are stacked perfectly on top of each other, obscuring the number of points involved. You can do this by jittering the points. Update the code accordingly!

# Jitter plot
ggplot(evals, aes(x = bty_avg, y = score)) +
  geom_jitter() +
  labs(x = "beauty score", y = "teaching score")