# Changing y-axis to density
# By default, you will notice that the y-axis is the 'count' of points that fell within a given bin. This is nice and interpretable, but what if we wanted to interpret the plot as a true density curve like it's trying to estimate? I.e. all the (bar widths) * (bar heights) sum to 1?
# 
# To do this we simply add y = stat(density) to the aesthetic mappings, this will re-scale the y-axis from counts to an empirical probability estimate. Note this won't change the shape of the plot at all, but will simply give you a different interpretation of the y-axis.
# 
# Let's try it out on the hour of the day that a speeder was pulled over (hour_of_day). In addition, lower the opacity of the bars a bit so the grid lines show through to allow easier comparisons.
# 
# Instructions
# 100 XP
# Instructions
# 100 XP
# set x-aesthetic to hour_of_day.
# set the y-aesthetic to stat(density).
# change the alpha value in geom_histogram() to 0.8.

ggplot(md_speeding) +
  geom_histogram(
    # set x and y aesthetics to hour_of_day and stat(density) respectively.
    aes(x = hour_of_day, y = stat(density)), 
    # make points see-through by setting alpha to 0.8
    alpha = 0.8
  )