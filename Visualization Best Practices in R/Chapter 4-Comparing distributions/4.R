# Your first beeswarm
# The following code makes a simple beeswarm plot for you of the gender speeding data, similar to what we saw in the last lesson.
# 
# You will notice that it doesn't look fantastic due to the stacking of the points causing overlap between the two genders' spreads.
# 
# Fix up this plot by reducing the size of the points using the cex argument to 0.5 and setting an opacity value for the points as to make the plots a little less harsh and emphasize the individual points.
# 
# In addition, add a transparent boxplot over the points to provide basic summary statistics as well.
# 
# Instructions
# 100 XP
# Reduce size of points by setting cex = 0.5 in the beeswarm geometry.
# Set the alpha of the points to 0.8 .
# Add a transparent boxplot on top of the beeswarm.

# Load library for making beeswarm plots
library(ggbeeswarm)

md_speeding %>% 
  filter(vehicle_color == 'RED') %>%
  ggplot(aes(x = gender, y = speed)) + 
  # change point size to 0.5 and alpha to 0.8
  geom_beeswarm(cex = 0.5, alpha = 0.8) +
  # add a transparent boxplot on top of points
  geom_boxplot(alpha = 0)