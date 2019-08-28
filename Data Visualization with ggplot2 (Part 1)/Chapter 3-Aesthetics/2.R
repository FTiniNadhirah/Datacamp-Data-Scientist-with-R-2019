# All about aesthetics, part 2
# The color aesthetic typically changes the outside outline of an object and the fill aesthetic is typically the inside shading. However, as you saw in the last exercise, geom_point() is an exception. Here you use color, instead of fill for the inside of the point. But it's a bit subtler than that.
# 
# Which shape to use? The default geom_point() uses shape = 19 (a solid circle with an outline the same colour as the inside). Good alternatives are shape = 1 (hollow) and shape = 16 (solid, no outline). These all use the col aesthetic (don't forget to set alpha for solid points).
# 
# A really nice alternative is shape = 21 which allows you to use both fill for the inside and col for the outline! This is a great little trick for when you want to map two aesthetics to a dot.
# 
# What happens when you use the wrong aesthetic mapping? This is a very common mistake! The code from the previous exercise is in the editor. Using this as your starting point complete the instructions.
# 
# Instructions
# 100 XP
# Instructions
# 100 XP
# Note: In the mtcars dataset, cyl and am have been converted to factor for you.
# 
# 1 - Copy & paste the first plot's code. Change the aesthetics so that cyl maps to fill rather than col.
# 2 - Copy & paste the second plot's code. In geom_point() change the shape argument to 21 and add an alpha argument set to 0.6.
# 3 - Copy & paste the third plot's code. In the ggplot() aesthetics, map am to col.

# am and cyl are factors, wt is numeric
class(mtcars$am)
class(mtcars$cyl)
class(mtcars$wt)

# From the previous exercise
ggplot(mtcars, aes(x = wt, y = mpg, col = cyl)) +
  geom_point(shape = 1, size = 4)

# 1 - Map cyl to fill
# 1 - Map cyl to fill
ggplot(mtcars, aes(x = wt, y = mpg, fill = cyl)) +
  geom_point(shape = 1, size = 4)


# 2 - Change shape and alpha of the points in the above plot
ggplot(mtcars, aes(x = wt, y = mpg, fill = cyl)) +
  geom_point(shape = 21, size = 4, alpha= .6)


# 3 - Map am to col in the above plot
ggplot(mtcars, aes(x = wt, y = mpg, fill = cyl, col = am)) +
  geom_point(shape = 21, size = 4, alpha= .6, stroke = 1.5)
