# Cleaning up your ridgelines
# Let's modify the plot from the last exercise, even more, to make it prettier and easier to read.
# 
# To do this, make the densities a bit transparent to help avoid overlapping issues by modifying the alpha value in the ridgeline geometry. Next, get rid of the extra space that ggplot puts around the extremes of the data to avoid the awkward empty strip on the right and left where the densities don't interpolate. Finally, use the theme() function to remove the y-axis ticks because the density lines already serve the purpose to point to the y-axis labels.
# 
# The ggridges library is already loaded for you.
# 
# Instructions
# 100 XP
# Instructions
# 100 XP
# Set alpha of geom_density_ridges() to 0.7.
# Set expand = c(0,0) in the scale_x_continuous() call.
# Remove axis.ticks.y in the theme() function.

md_speeding %>% 
  mutate(day_of_week = factor(day_of_week, levels = c("Mon","Tues","Wed","Thu","Fri","Sat","Sun") )) %>% 
  ggplot(aes( x = percentage_over_limit, y = day_of_week)) + 
  # make ridgeline densities a bit see-through with alpha = 0.7
  geom_density_ridges(bandwidth = 3.5, alpha = 0.7) +
  # set expand values to c(0,0)
  scale_x_continuous(limits = c(0,150), expand  = c(0,0)) +
  labs(subtitle = 'Guassian kernel SD = 3.5') +
  # remove y axis ticks by setting equal to element_blank()
  theme(axis.ticks.y = element_blank() )