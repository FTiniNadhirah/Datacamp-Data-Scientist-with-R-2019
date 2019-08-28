# Using qplot
# For simple exploratory plots, there are a variety of functions available. ggplot2 offers a powerful and diverse array of functions, but qplot() allows for quick and dirty plots. Plus, you should also be familiar with basic plotting notation.
# 
# Instructions
# 100 XP
# Have a look at the base R plotting function. It plots mpg on the y-axis against wt on the x-axis. Create the same plot using ggplot().
# Create the same plot using qplot().

# The old way (shown)
plot(mpg ~ wt, data = mtcars) # formula notation
with(mtcars, plot(wt, mpg)) # x, y notation

# Using ggplot:
ggplot(mtcars, aes(wt, mpg)) +
  geom_point()

# Using qplot:
qplot(wt, mpg, data = mtcars)
