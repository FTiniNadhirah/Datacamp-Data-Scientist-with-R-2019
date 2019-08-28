# base package and ggplot2, part 1 - plot
# These courses are about understanding data visualization in the context of the grammar of graphics. To gain a better appreciation of ggplot2 and to understand how it operates differently from base package, it's useful to make some comparisons.
# 
# In the video, you already saw one example of how to make a (poor) multivariate plot in base package. In this series of exercises you'll take a look at a better way using the equivalent version in ggplot2.
# 
# First, let's focus on base package. You want to make a plot of mpg (miles per gallon) against wt (weight in thousands of pounds) in the mtcars data frame, but this time you want the dots colored according to the number of cylinders, cyl. How would you do that in base package? You can use a little trick to color the dots by specifying a factor variable as a color. This works because factors are just a special class of the integer type.
# 
# Instructions
# 100 XP
# Using the base package plot(), make a scatter plot with mtcars$wt on the x-axis and mtcars$mpg on the y-axis, colored according to mtcars$cyl (use the col argument). You can specify data = but you'll just do it the long way here.
# Add a new column, fcyl, to the mtcars data frame. This should be cyl converted to a factor.
# Create a similar plot to instruction 1, but this time, use fcyl (which is cyl as a factor) to set the col.

# Plot the correct variables of mtcars
plot(mtcars$wt, mtcars$mpg, col = mtcars$cyl)

# Change cyl inside mtcars to a factor
mtcars$fcyl <- as.factor(mtcars$cyl)

# Make the same plot as in the first instruction
plot(mtcars$wt, mtcars$mpg, col = mtcars$fcyl)