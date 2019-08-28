# All about attributes, part 2
# In the videos you saw that you can use all the aesthetics as attributes. Let's see how this works with the aesthetics you used in the previous exercises: x, y, color, fill, size, alpha, label and shape.
# 
# In this exercise you will set all kinds of attributes of the points!
# 
# You will continue to work with mtcars.
# 
# Instructions
# 100 XP
# Add to the first command: draw points with alpha set to 0.5.
# Add to the second command: draw points of shape 24 in the color yellow.
# Add to the third command: draw text with label rownames(mtcars) in the color red. Don't use geom_point() here! You should get a scatter plot with the names of the cars instead of points.
# Note: Remember to specify characters with quotation marks ("yellow", not yellow).

# Expand to draw points with alpha 0.5
ggplot(mtcars, aes(x = wt, y = mpg, fill = cyl)) +
  geom_point(alpha = 0.5)

# Expand to draw points with shape 24 and color yellow
ggplot(mtcars, aes(x = wt, y = mpg, fill = cyl)) +
  geom_point(shape = 24, color = 'yellow')

# Expand to draw text with label rownames(mtcars) and color red
ggplot(mtcars, aes(x = wt, y = mpg, fill = cyl)) +
  geom_text(label = rownames(mtcars), color = 'red')