# Faceting to show all colors
# As we may expect, there doesn't appear to be too big of a difference in genders for red cars. What happens if we instead facet to look at this comparison across all the colors?
# 
# It's not uncommon when comparing distributions to want to look at a large number of conditions. When doing this faceting, we're looking at all 10k points.
# 
# Instructions
# 100 XP
# Remove filter() for red cars.
# Add a facet_wrap() by vehicle_color.
# Change title to 'Speed of different car colors, separated by gender of driver'

# remove color filter
md_speeding %>% 
  ggplot(aes(x = gender, y = speed)) + 
  geom_jitter(alpha = 0.3, color = 'steelblue') +
  geom_boxplot(alpha = 0) +
  # add a facet_wrap by vehicle_color
  facet_wrap(~vehicle_color) +
  # change title to reflect new faceting
  labs(title = 'Speed of different car colors, separated by gender of driver')