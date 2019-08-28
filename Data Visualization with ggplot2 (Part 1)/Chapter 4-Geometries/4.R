# Position
# In the previous chapter you saw that there are lots of ways to position scatter plots. Likewise, the geom_bar() and geom_histogram() geoms also have a position argument, which you can use to specify how to draw the bars of the plot.
# 
# Three position arguments will be introduced here:
#   
#   stack: place the bars on top of each other. Counts are used. This is the default position.
# fill: place the bars on top of each other, but this time use proportions.
# dodge: place the bars next to each other. Counts are used.
# In this exercise you'll draw the total count of cars having a given number of cylinders (cyl), according to manual or automatic transmission type (am) - as shown in the viewer.
# 
# Since, in the built-in mtcars data set, cyl and am are integers, they have already been converted to factor variables for you.
# 
# Instructions
# 100 XP
# Instructions
# 100 XP
# 1 - Using mtcars, map cyl onto the x aesthetic and am onto fill. Use geom_bar() to make a bar plot.
# 2 - Take plot 1 and explicitly set position = "stack" in geom_bar(). This doesn't change anything, does it? It was mentioned above that "stack" is the default.
# 3 - Take plot 2 and set position = "fill" in geom_bar().
# 4 - Take plot 3 and set position = "dodge" in geom_bar().


# Draw a bar plot of cyl, filled according to am
ggplot(mtcars, aes(x = cyl, fill = am)) +
  geom_bar()

# Change the position argument to stack
ggplot(mtcars, aes(x = cyl, fill = am)) +
  geom_bar(position = "stack")


# Change the position argument to fill
ggplot(mtcars, aes(x = cyl, fill = am)) +
  geom_bar(position = "fill")


# Change the position argument to dodge
ggplot(mtcars, aes(x = cyl, fill = am)) +
  geom_bar(position = "dodge")
