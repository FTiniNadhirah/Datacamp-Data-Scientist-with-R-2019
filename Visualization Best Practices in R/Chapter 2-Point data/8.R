# Converting to point chart
# Our plot in the last exercise looked good, but what if we care about the values of the lower-end of the cases? It's hard for us to get a sense of their values because Brazil and Argentina are forcing the axis' upper range so high.
# 
# This is a good situation to switch to a log scale. However, remember that when on a log scale our stacking concept fails, so we should switch to a point chart! Note the additional filter added to the pipeline. What happens if you run the code without it?
#   
#   This time, instead of modifying the data before sending to ggplot(), we will add scale_y_log10() to our plot and ggplot will take care of it for us.
# 
# To polish, use theme_minimal() to lighten the chart up and increase the size of the points from the default to 2.
# 
# Instructions
# 100 XP
# Instructions
# 100 XP
# Change the geometry from geom_col() to geom_point() .
# Increase point size with size = 2.
# Switch to a log scale with scale_y_log10().
# Lighten the background with theme_minimal().

amr_pertussis %>% filter(cases > 0) %>% 
  ggplot(aes(x = reorder(country, cases), y = cases)) + 
  # switch geometry to point and set size = 2
  geom_point(size = 2) + 
  # change y-axis to log10. 
  scale_y_log10() + 
  # add theme_minimal()
  theme_minimal() +
  coord_flip()