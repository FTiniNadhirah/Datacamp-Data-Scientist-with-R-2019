# Exercise
# Exercise
# Fiddling with a violin plot
# The supplied code makes a simple violin plot of the same comparison we've been looking at.
# 
# Much like with geom_density(), ggplot has given us an unfilled (or at least white) shape. To make this more aesthetically pleasing, set the fill to 'steelblue'. Set the kernel SD to an intuitively reasonable value and make sure to state this kernel width in the subtitle of the plot.
# 
# In addition, let's attempt to replicate the rain-cloud plots from the density lesson and add (non-jittered) points back to the plot over the violins to attempt to see where interpolation is happening. Do this by simply adding a geom_point() geometry and setting the color to 'white', the alpha to 0.3 to show overlap, and the size to 0.5 to keep the points as unobtrusive as possible.
# 
# Instructions
# 100 XP
# Instructions
# 100 XP
# Swap geom_beeswarm() with geom_violin().
# Set the kernel width (bw) of the violin plot to 2.5.
# Add individual points underneath with geom_point().
# Style individual points with alpha = 0.3, size = 0.5.

md_speeding %>% 
  filter(vehicle_color == 'RED') %>%
  ggplot(aes(x = gender, y = speed)) + 
  # Replace beeswarm geometry with a violin geometry with kernel width of 2.5
  geom_violin(bw = 2.5) +
  # add individual points on top of violins and set their alpha to 0.3 and size to 0.5
  geom_point(alpha = 0.3, size = 0.5)