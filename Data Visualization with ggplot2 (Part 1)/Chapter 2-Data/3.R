# base package and ggplot2, part 3
# In this exercise you'll recreate the base package plot in ggplot2.
# 
# The code for base R plotting is given at the top. The first line of code already converts the cyl variable of mtcars to a factor.
# 
# Instructions
# 100 XP
# Instructions
# 100 XP
# Plot 1: add geom_point() in order to make a scatter plot.
# 
# Plot 2: copy and paste Plot 1.
# 
# Add a linear model for each subset according to cyl by adding a geom_smooth() layer.
# 
# Inside this geom_smooth(), set method to "lm" and se to FALSE.
# 
# Note: geom_smooth() will automatically draw a line per cyl subset. It recognizes the groups you want to identify by color in the aes() call within the ggplot() command.
# 
# Plot 3: copy and paste Plot 2.
# 
# Plot a linear model for the entire dataset, do this by adding another geom_smooth() layer.
# 
# Set the group aesthetic inside this geom_smooth() layer to 1. This has to be set within the aes() function.
# 
# Set method to "lm", se to FALSE and linetype to 2. These have to be set outside aes() of the geom_smooth().
# 
# Note: the group aesthetic will tell ggplot() to draw a single linear model through all the points.
# 

# Convert cyl to factor (don't need to change)
mtcars$cyl <- as.factor(mtcars$cyl)

# Example from base R (don't need to change)
plot(mtcars$wt, mtcars$mpg, col = mtcars$cyl)
abline(lm(mpg ~ wt, data = mtcars), lty = 2)
lapply(mtcars$cyl, function(x) {
  abline(lm(mpg ~ wt, mtcars, subset = (cyl == x)), col = x)
})
legend(x = 5, y = 33, legend = levels(mtcars$cyl),
       col = 1:3, pch = 1, bty = "n")

# Plot 1: add geom_point() to this command to create a scatter plot
ggplot(mtcars, aes(x = wt, y = mpg, col = cyl)) +
  geom_point()  # Fill in using instructions Plot 1

# Plot 2: include the lines of the linear models, per cyl
ggplot(mtcars, aes(x = wt, y = mpg, col = cyl)) +
  geom_point() + # Copy from Plot 1
  geom_smooth(method = 'lm', se = F)   # Fill in using instructions Plot 2

# Plot 3: include a lm for the entire dataset in its whole
ggplot(mtcars, aes(x = wt, y = mpg, col = cyl)) + 
  geom_point() + # Copy from Plot 2
  geom_smooth(method = 'lm', se = F) + # Copy from Plot 2
  geom_smooth(aes(group = 1), method = 'lm', se = F, linetype = 2)   # Fill in using instructions Plot 3