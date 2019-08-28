# Editing plot text
# While our initial plot is a good start, there's a lot more we'll want to do to get it ready for "prime time." Let's start by making the x-axis readable, changing the axis labels, and making the y-axis ticks percentage.
# 
# The dataset usefulness_by_platform has been loaded for you.
# 
# Instructions
# 100 XP
# Change the x-axis text to be rotated 90 degrees.
# Change the x-axis label to "Learning Platform" and y-axis label to "Percent finding at least somewhat useful".
# Change the y-axis scale to be a percentage.


ggplot(usefulness_by_platform, aes(x = learning_platform, y = avg_usefulness)) + 
  geom_point() + 
  # rotate x-axis text by 90 degrees
  theme(axis.text.x = element_text(angle = 90, hjust = 1)) + 
  # rename y and x axis labels
  labs(x = "Learning Platform", y = "Percent finding at least somewhat useful") + 
  # change y axis scale to percentage
  scale_y_continuous(labels = scales::percent)