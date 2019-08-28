# All about aesthetics, part 3
# Now that you've got some practice with incrementally building up plots, you can try to do it from scratch! The mtcars dataset is pre-loaded in the workspace.
# 
# Instructions
# 100 XP
# Instructions
# 100 XP
# Use ggplot() to create a basic scatter plot. Inside aes(), map wt onto x and mpg onto y. Typically, you would say "mpg described by wt" or "mpg vs wt", but in aes(), it's x first, y second. Use geom_point() to make three scatter plots:
#   
#   cyl on size
# cyl on alpha
# cyl on shape
# Try this last variant:
#   
#   cyl on label. In order to correctly show the text (i.e. label), use geom_text().
# Map cyl to size
ggplot(mtcars, aes(wt, mpg, size = cyl)) + geom_point()


# Map cyl to alpha
ggplot(mtcars, aes(wt, mpg, alpha = cyl)) + geom_point()


# Map cyl to shape 
ggplot(mtcars, aes(wt, mpg, shape = cyl)) + geom_point()


# Map cyl to label
ggplot(mtcars, aes(wt, mpg, label = cyl)) + geom_text()
