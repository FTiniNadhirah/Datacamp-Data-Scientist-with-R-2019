# Other ggplot2 layers
# A line plot is one way to display this data. You could also choose to display it as a scatter plot, with each year represented as a single point. This requires changing the layer (i.e. geom_line() to geom_point()).
# 
# You can also add additional layers to your graph, such as a smoothing curve with geom_smooth().
# 
# Instructions
# 100 XP
# Change the plot to a scatter plot and add a smoothing curve.
# 

# Change to scatter plot and add smoothing curve
ggplot(by_year, aes(year, percent_yes)) +
  geom_point() +
  geom_smooth()
