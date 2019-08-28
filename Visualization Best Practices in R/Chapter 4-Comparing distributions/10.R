# Making it rain (datapoints)
# The increased bi-modality we see early in the week could be compelling, but we should draw individual points below the densities in order to get a sense of what the KDE is doing in terms of interpolation before calling it a day.
# 
# Added to the previous exercises' code is a point geometry to do just this. You will notice it doesn't look very good. To make it better we will do a few things...
# 
# First, lower the point alphas slightly to visualize overlap. Second, switch the point shape to the geom_rug() style vertical lines ('|').
# 
# At this stage, if you run the code you will see the points awkwardly clip the density shapes. We need to 'nudge' the tick marks down the y-axis a tiny bit. To do this we can use the position argument and the helper function position_nudge().
# 
# Instructions
# 100 XP
# Instructions
# 100 XP
# Lower alpha of the points to 0.2 to show overlap.
# Change the line shape to '|' for more efficient space utilization.
# Push points down so they don't overlap the density shape with position = position_nudge(y = -0.05).

md_speeding %>% 
  mutate(day_of_week = factor(day_of_week, levels = c("Mon","Tues","Wed","Thu","Fri","Sat","Sun") )) %>% 
  ggplot(aes( x = percentage_over_limit, y = day_of_week)) + 
  geom_point(
    alpha = 0.2,  # make semi-transparent with alpha = 0.2
    shape = '|',  # turn points to vertical lines with shape = '|'
    position = position_nudge(y = -0.05) # nudge the points downward by 0.05
  ) +
  geom_density_ridges(bandwidth = 3.5, alpha = 0.7) +
  scale_x_continuous(limits = c(0,150), expand  = c(0,0)) +
  labs(subtitle = 'Guassian kernel SD = 3.5') +
  theme( axis.ticks.y = element_blank() )