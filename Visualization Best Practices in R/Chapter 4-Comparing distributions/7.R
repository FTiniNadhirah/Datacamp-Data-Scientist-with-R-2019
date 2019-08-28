# Exercise
# Exercise
# Comparing lots of distributions
# Let's revisit the faceted plot we made before, but now with our handy new techniques. Can we get a better handle on the relationships with our new plot types?
# 
# The supplied code makes the same visualization you did in the last lesson. Change the code to use violin plots to display the density instead of jitter plots to draw the individual data. Like in the last exercise, shrink the box plot width so they mostly sit within the violin plots. Last, don't forget to add a subtitle to the plot telling the viewer the width of your violin plot kernels!
#   
#   Instructions
# 100 XP
# Replace geom_jitter() with geom_violin().
# Set fill = 'steelblue' and kernel standard deviation of 2.5 for the violin geometry.
# Shrink geom_boxplot() width by setting it to 0.3.
# Add the subtitle Gaussian kernel width: 2.5'.

md_speeding %>% 
  ggplot(aes(x = gender, y = speed)) + 
  # replace with violin plot with kernel width of 2.5, change color argument to fill 
  geom_violin(fill = 'steelblue', bw = 2.5) +
  # reduce width to 0.3
  geom_boxplot(alpha = 0, width = 0.3) +
  facet_wrap(~vehicle_color) +
  labs(
    title = 'Speed of different car colors, separated by gender of driver',
    # add a subtitle w/ kernel width
    subtitle = 'Gaussian kernel width: 2.5'
  )