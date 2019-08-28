# Understanding the grammar, part 1
# Here you'll explore some of the different grammatical elements. Throughout this course, you'll discover how they can be combined in all sorts of ways to develop unique plots.
# 
# In the following instructions, you'll start by creating a ggplot object from the diamonds dataset. Next, you'll add layers onto this object to build beautiful & informative plots.
# 
# Instructions
# 100 XP
# Instructions
# 100 XP
# Define the data (diamonds) and aesthetics layers. Map carat on the x axis and price on the y axis. Assign it to an object: dia_plot.
# Using +, add a geom_point() layer (with no arguments), to the dia_plot object. This can be in a single or multiple lines.
# Note that you can also call aes() within the geom_point() function. Map clarity to the color argument in this way.

# Create the object containing the data and aes layers: dia_plot
dia_plot <- ggplot(diamonds, aes(x = carat, y = price))

# Add a geom layer with + and geom_point()
dia_plot + geom_point()

# Add the same geom layer, but with aes() inside
dia_plot + geom_point(aes(color = clarity))
