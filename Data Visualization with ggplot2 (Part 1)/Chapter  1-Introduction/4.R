# Exploring ggplot2, part 4
# The diamonds data frame contains information on the prices and various metrics of 50,000 diamonds. Among the variables included are carat (a measurement of the size of the diamond) and price. For the next exercises, you'll be using a subset of 1,000 diamonds.
# 
# Here you'll use two common geom layer functions: geom_point() and geom_smooth(). We already saw in the earlier exercises how these are added using the + operator.
# 
# Instructions
# 100 XP
# Explore the diamonds data frame with the str() function.
# Use the + operator to add geom_point() to the first ggplot() command. This will tell ggplot2 to draw points on the plot.
# Use the + operator to add geom_point() and geom_smooth(). These just stack on each other! geom_smooth() will draw a smoothed line over the points.

# Explore the diamonds data frame with str()
str(diamonds)

# Add geom_point() with +
ggplot(diamonds, aes(x = carat, y = price)) +
  geom_point()

# Add geom_point() and geom_smooth() with +
ggplot(diamonds, aes(x = carat, y = price)) +
  geom_point() + 
  geom_smooth()

