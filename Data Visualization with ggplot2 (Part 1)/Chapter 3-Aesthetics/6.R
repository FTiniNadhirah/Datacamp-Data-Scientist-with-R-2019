# Going all out
# In this exercise, you will gradually add more aesthetics layers to the plot. You're still working with the mtcars dataset, but this time you're using more features of the cars. For completeness, here is a list of all the features of the observations in mtcars:
#   
#   mpg -- Miles/(US) gallon
# cyl -- Number of cylinders
# disp -- Displacement (cu.in.)
# hp -- Gross horsepower
# drat -- Rear axle ratio
# wt -- Weight (lb/1000)
# qsec -- 1/4 mile time
# vs -- V/S engine.
# am -- Transmission (0 = automatic, 1 = manual)
# gear -- Number of forward gears
# carb -- Number of carburetors
# Notice that adding more aesthetics to your plot is not always a good idea. Adding aesthetic mappings to a plot will increase its complexity, and thus decrease its readability.
# 
# Instructions
# 100 XP
# Instructions
# 100 XP
# Note: In this chapter you saw aesthetics and attributes. Variables in a data frame are mapped to aesthetics in aes(). (e.g. aes(col = cyl)) within ggplot(). Visual elements are set by attributes in specific geom layers (geom_point(col = "red")). Don't confuse these two things - here you're focusing on aesthetic mappings.
# 
# Draw a scatter plot of mtcars with mpg on the x-axis, qsec on the y-axis and factor(cyl) as colors.
# Copy the previous plot and expand to include factor(am) as the shape of the points.
# Copy the previous plot and expand to include the ratio of horsepower to weight (i.e. (hp/wt)) as the size of the points.

# Map mpg onto x, qsec onto y and factor(cyl) onto col
ggplot(mtcars, aes(mpg, qsec, col = factor(cyl))) + 
  geom_point()


# Add mapping: factor(am) onto shape
ggplot(mtcars, 
       aes(mpg, qsec, 
           col = factor(cyl), 
           shape = factor(am)
       )) + 
  geom_point()


# Add mapping: (hp/wt) onto size
ggplot(mtcars, 
       aes(mpg, qsec, 
           col = factor(cyl), 
           shape = factor(am),
           size = (hp/wt)
       )) + 
  geom_point()
