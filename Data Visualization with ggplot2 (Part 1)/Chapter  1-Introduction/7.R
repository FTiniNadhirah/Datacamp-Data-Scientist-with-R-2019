# Understanding the grammar, part 2
# Continuing with the previous exercise, here you'll explore mixing arguments and aesthetics in a single geometry.
# 
# You're still working on the diamonds dataset.
# 
# Instructions
# 100 XP
# 1 - The dia_plot object has been created for you.
# 2 - Update dia_plot so that it contains all the functions to make a scatter plot by using geom_point() for the geom layer. Set alpha = 0.2.
# 3 - Using +, plot the dia_plot object with a geom_smooth() layer on top. You don't want any error shading, which can be achieved by setting the se = FALSE in geom_smooth().
# 4 - Modify the geom_smooth() function from the previous instruction so that it contains aes() and map clarity to the col argument.

# 1 - The dia_plot object has been created for you
dia_plot <- ggplot(diamonds, aes(x = carat, y = price))

# 2 - Expand dia_plot by adding geom_point() with alpha set to 0.2
dia_plot <- dia_plot + geom_point(alpha = 0.2)

# 3 - Plot dia_plot with additional geom_smooth() with se set to FALSE
dia_plot + geom_smooth(se = F)

# 4 - Copy the command from above and add aes() with the correct mapping to geom_smooth()
dia_plot + geom_smooth(aes(col = clarity), se = F)
