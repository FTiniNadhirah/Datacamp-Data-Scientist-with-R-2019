# Overplotting 1 - Point shape and transparency
# In the previous section you saw that there are lots of ways to use aesthetics. Perhaps too many, because although they are possible, they are not all recommended. Let's take a look at what works and what doesn't.
# 
# So far you've focused on scatter plots since they are intuitive, easily understood and very common. A major consideration in any scatter plot is dealing with overplotting. You'll encounter this topic again in the geometries layer, but you can already make some adjustments here.
# 
# You'll have to deal with overplotting when you have:
# 
# Large datasets,
# Imprecise data and so points are not clearly separated on your plot (you saw this in the video with the iris dataset),
# Interval data (i.e. data appears at fixed values), or
# Aligned data values on a single axis.
# One very common technique that I'd recommend to always use when you have solid shapes it to use alpha blending (i.e. adding transparency). An alternative is to use hollow shapes. These are adjustments to make before even worrying about positioning. This addresses the first point as above, which you'll see again in the next exercise.
# 
# Instructions
# 100 XP
# Begin by making a basic scatter plot of mpg (y) vs. wt (x), map cyl to color and make the size = 4. cyl has already been converted to a factor variable for you.
# Modify the above plot to set shape to 1. This allows for hollow circles.
# Modify the first plot to set alpha to 0.6.

# Basic scatter plot: wt on x-axis and mpg on y-axis; map cyl to col
ggplot(mtcars, aes(wt, mpg, col = cyl)) +
  geom_point(size = 4)


# Hollow circles - an improvement
ggplot(mtcars, aes(wt, mpg, col = cyl)) +
  geom_point(size = 4, shape = 1)


# Add transparency - very nice
ggplot(mtcars, aes(wt, mpg, col = cyl)) +
  geom_point(size = 4, alpha = .6)
