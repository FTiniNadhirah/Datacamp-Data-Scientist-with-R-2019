# All about aesthetics, part 1
# In the video you saw 9 visible aesthetics. Let's apply them to a categorical variable - the cylinders in mtcars, cyl.
# 
# (You'll consider line type when you encounter line plots in the next chapter).
# 
# These are the aesthetics you can consider within aes() in this chapter: x, y, color, fill, size, alpha, labels and shape.
# 
# In the following exercise you can assume that the cyl column is categorical. It has already been transformed into a factor for you.
# 
# Instructions
# 100 XP
# Instructions
# 100 XP
# The mtcars data frame is available in your workspace. For each of the following four plots, use geom_point():
#   
#   1 - Map mpg onto the x aesthetic, and cyl onto the y.
# 2 - Reverse the mappings of the first plot.
# 3 - Map wt onto x, mpg onto y, and cyl onto color.
# Modify the previous plot by changing the shape argument of the geom to 1 and increase the size to 4. These are attributes that you should specify inside geom_point().
# 1 - Map mpg to x and cyl to y
ggplot(mtcars, aes(mpg, cyl)) +
  geom_point()

# 2 - Reverse: Map cyl to x and mpg to y
ggplot(mtcars, aes(cyl, mpg)) +
  geom_point()

# 3 - Map wt to x, mpg to y and cyl to col
ggplot(mtcars, aes(x = wt, y = mpg, col = cyl)) +
  geom_point()
# 4 - Change shape and size of the points in the above plot
## here the shape and size are attributes
## the wt mpg and cyl are mapped to aesthetics, x, y, and color
ggplot(mtcars, aes(wt, mpg, col = cyl)) +
  geom_point(shape = 1, size = 4)
