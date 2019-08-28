# Exploring ggplot2, part 5
# The code for the last plot of the previous exercise is available in the script on the right. It builds a scatter plot of the diamonds dataset, with carat on the x-axis and price on the y-axis. geom_smooth() is used to add a smooth line.
# 
# With this plot as a starting point, let's explore some more possibilities of combining geoms.
# 
# Instructions

# Plot 2 - Copy and paste plot 1, but show only the smooth line, no points.
# Plot 3 - Show only the smooth line, but color according to clarity by placing the argument color = clarity in the aes() function of your ggplot() call.
# Plot 4 - Draw translucent colored points.
# Copy the ggplot() command from plot 3 (with clarity mapped to color).
# Remove the smooth layer.
# Add the points layer back in.
# Set alpha = 0.4 inside geom_point(). This will make the points 60% transparent/40% visible.

# 1 - The plot you created in the previous exercise
ggplot(diamonds, aes(x = carat, y = price)) +
  geom_point() +
  geom_smooth()

# 2 - Copy the above command but show only the smooth line
ggplot(diamonds, aes(x = carat, y = price)) +
  geom_smooth()


# 3 - Copy the above command and assign the correct value to col in aes()
ggplot(diamonds, aes(x = carat, y = price, color = clarity)) +
  geom_smooth()


# 4 - Keep the color settings from previous command. Plot only the points with argument alpha.
ggplot(diamonds, aes(x = carat, y = price, color = clarity)) +
  geom_point(alpha = .4)
