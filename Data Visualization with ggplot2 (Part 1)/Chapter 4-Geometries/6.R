# Overlapping histograms
# Overlapping histograms pose similar problems to overlapping bar plots, but there is a unique solution here: a frequency polygon.
# 
# This is a geom specific to binned data that draws a line connecting the value of each bin. Like geom_histogram(), it takes a binwidth argument and by default stat = "bin" and position = "identity".
# 
# Instructions
# 100 XP
# Instructions
# 100 XP
# The code for a basic histogram of mpg, which you've already seen, is provided. Extend the code to map cyl onto fill inside aes().
# The default position for histograms is "stack". Copy your solution to the first exercise and set the position for the histogram bars to "identity".
# Using the same data and base layers as in the previous two plots, create a plot with a geom_freqpoly(). Because you're no longer working with bars, change the aes() function: cyl should be mapped onto color, not onto fill. This will correctly color the geom.

# A basic histogram, add coloring defined by cyl
ggplot(mtcars, aes(mpg, fill = cyl)) +
  geom_histogram(binwidth = 1)

# Change position to identity
ggplot(mtcars, aes(mpg, fill = cyl)) +
  geom_histogram(binwidth = 1, position = "identity")

# Change geom to freqpoly (position is identity by default)
ggplot(mtcars, aes(mpg, color = cyl)) +
  geom_freqpoly(binwidth = 1)