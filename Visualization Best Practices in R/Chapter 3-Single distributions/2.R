# Looking at all data
# Looking at the speed for a given car color is a little contrived so let's change the example we saw in the slides to include all of the data.
# 
# Your job is to fill in the code to make a histogram of the speed_over column of the data.
# 
# In addition, to allow the reader to more easily anchor themselves with respect to the axes, lower the alpha of the histogram to allow the grid lines to show through. Pair this with the addition of theme_minimal() to darken the grid lines and lighten the background to compensate for the lighter bars.
# 
# Instructions
# 100 XP
# Add geom_histogram() with speed_over mapped to the x-axis.
# Set alpha of histogram to 0.7.
# Add theme_minimal() to plot to increase contrast.

ggplot(md_speeding) + 
  # Add the histogram geometry
  geom_histogram(
    # Map speed_over to x
    aes(x = speed_over),
    # Lower alpha to 0.7
    alpha = 0.7
  ) +
  # Add minimal theme
  theme_minimal()