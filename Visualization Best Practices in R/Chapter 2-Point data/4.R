# Adding visual anchors
# A nice property of the log fold change is it is symmetric: a value of 1 means two times 'bigger', and -1 means two times 'smaller.' Due to this, the position of 0 on the x-axis marks the switch point between count declines and increases over years. When your data has a natural break-point like this, it is good if the chart shows it as a focal-point as well.
# 
# The code provided will make a basic point chart of the log fold change for the dates. To improve it, we will do two things. First, reorder the dots in descending order like in the previous exercise. Second, add a guideline at x = 0 to show the neutral point by adding geom_vline() (for verticalline) to your plot object with the argument xintercept set to 0.
# 
# Instructions
# 100 XP
# Order dots in descending by wrapping the y mapping in reorder().
# Add visual anchor at x = 0 with geom_vline().

who_subset %>% 
  # calculate the log fold change between 2016 and 2006
  mutate(logFoldChange = log2(cases_2002/cases_1992)) %>% 
  # set y axis as country ordered with respect to logFoldChange
  ggplot(aes(x = logFoldChange, y = reorder(country, logFoldChange))) +
  geom_point() +
  # add a visual anchor at x = 0
  geom_vline(xintercept = 0)