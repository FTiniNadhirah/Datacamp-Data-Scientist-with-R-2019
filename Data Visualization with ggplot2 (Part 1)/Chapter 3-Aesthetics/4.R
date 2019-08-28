# Exercise
# Exercise
# All about attributes, part 1
# In the video you saw that you can use all the aesthetics as attributes. Let's see how this works with the aesthetics you used in the previous exercises: x, y, color, fill, size, alpha, label and shape.
# 
# This time you'll use these arguments to set attributes of the plot, not aesthetics. However, there are some pitfalls you'll have to watch out for: these attributes can overwrite the aesthetics of your plot!
# 
# A word about shapes: In the exercise "All about aesthetics, part 2", you saw that shape = 21 results in a point that has a fill and an outline. Shapes in R can have a value from 1-25. Shapes 1-20 can only accept a color aesthetic, but shapes 21-25 have both a color and a fill aesthetic. See the pch argument in par() for further discussion.
# 
# A word about hexadecimal colours: Hexadecimal, literally "related to 16", is a base-16 alphanumeric counting system. Individual values come from the ranges 0-9 and A-F. This means there are 256 possible two-digit values (i.e. 00 - FF). Hexadecimal colours use this system to specify a six-digit code for Red, Green and Blue values ("#RRGGBB") of a colour (i.e. Pure blue: "#0000FF", black: "#000000", white: "#FFFFFF"). R can accept hex codes as valid colours.
# 
# Instructions
# 100 XP
# Instructions
# 100 XP
# 1 - You will continue to work with mtcars. Use ggplot() to create a basic scatter plot: map wt onto x, mpg onto y and cyl onto color.
# 2 - Overwrite the color of the points inside geom_point() to my_color. Notice how this cancels out the colors given to the points by the number of cylinders!
# 3 - Starting with plot 2, map cyl to fill instead of col and set the attributes size to 10, shape to 23 and color to my_color inside geom_point().
# Define a hexadecimal color
my_color <- "#4ABEFF"

# Draw a scatter plot with color *aesthetic*
ggplot(mtcars, aes(wt, mpg, col = cyl)) + 
  geom_point()


# Same, but set color *attribute* in geom layer 

ggplot(mtcars, aes(wt, mpg, col = cyl)) + 
  geom_point(col = my_color)


# Set the fill aesthetic; color, size and shape attributes
ggplot(mtcars, aes(wt, mpg, fill = cyl)) + 
  geom_point(size = 10, shape = 23, color = my_color, stroke = 1.5)

