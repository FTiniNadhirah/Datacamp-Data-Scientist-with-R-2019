# Adding some jitter
# We can improve the previous plot by adding jittered points behind the box plot. Make the jittered points a nice 'steelblue' color and set their alpha to 0.3 in order to visualize any overlap that may happen by chance.
# 
# You will also need to make the boxplot transparent in order to see the points that fall under the 'box' of the box plot.
# 
# Instructions
# 100 XP
# Add geom_jitter() to the plot object before the boxplot geometry.
# Set the color of the jittered points to 'steelblue' and the alpha to 0.3.
# Make existing box plot transparent by setting alpha to 0.

md_speeding %>% 
  filter(vehicle_color == 'RED') %>%
  ggplot(aes(x = gender, y = speed)) + 
  # add jittered points with alpha of 0.3 and color 'steelblue'
  geom_jitter(alpha = 0.3, color = 'steelblue') + 
  # make boxplot transparent with alpha = 0
  geom_boxplot(alpha = 0) +
  labs(title = 'Speed of red cars by gender of driver')