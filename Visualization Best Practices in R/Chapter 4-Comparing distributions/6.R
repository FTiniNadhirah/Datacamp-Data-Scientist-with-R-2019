# Exercise
# Exercise
# Violins with boxplots
# If we still want the handy summary statistics that a box plot provides while not sacrificing the benefits of a violin plot, we can simply add a geom_boxplot() on top of the violin geometry in our plot object.
# 
# One issue we run into when doing this, however, is that the box plots are awkwardly wide. We only need to see where the horizontal lines are and not much more. Luckily, geom_boxplot() has the argument width, which scales the width of the boxplot (e.g. 0.5 = half-width).
# 
# Modify the plot we just made to have a boxplot between the violin and point geometries. In addition, change the points to have shape = 95 which is a horizontal tick mark. Lastly, we forgot to tell the user our kernel width, let's do that now.
# 
# Instructions
# 100 XP
# Add a geom_boxplot() between violin and point geometries.
# Set box alpha to 0 and width to 0.3.
# Change point geometry to shape = 95 and delete size argument.
# Give plot a subtitle with labs(subtitle = 'Gaussian kernel SD = 2.5').

md_speeding %>% 
  filter(vehicle_color == 'RED') %>%
  ggplot(aes(x = gender, y = speed)) + 
  geom_violin(bw = 2.5) +
  # add a transparent boxplot and shrink its width
  geom_boxplot(alpha = 0, width = 0.3) + 
  # Reset point size to default and set point shape to 95.
  geom_point(alpha = 0.3, shape = 95) + 
  # Supply a subtitle detailing the kernel width
  labs(subtitle = 'Gaussian kernel SD = 2.5')