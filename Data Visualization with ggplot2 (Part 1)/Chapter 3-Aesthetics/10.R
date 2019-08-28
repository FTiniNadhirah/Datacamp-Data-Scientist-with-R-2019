# Overplotting 2 - alpha with large datasets
# In a previous exercise we defined four situations in which you'd have to adjust for overplotting. You'll consider the last two here with the diamonds dataset:
#   
#   Large datasets.
# Aligned data values on a single axis
# Instructions
# 100 XP
# Instructions
# 100 XP
# The diamonds data frame is available in the ggplot2 package. Begin by making a basic scatter plot of price (y) vs. carat (x) and map clarity onto color.
# Copy the above functions and set the alpha to 0.5. This is a good start to dealing with the large dataset.
# Align all the diamonds within a clarity class, by plotting carat (y) vs. clarity (x). Map price onto color. alpha should still be 0.5.
# In the previous plot, all the individual values line up on a single axis within each clarity category, so you have not overcome overplotting. Modify the above plot to use the position = "jitter" inside geom_point().
# Scatter plot: carat (x), price (y), clarity (color)
ggplot(diamonds, aes(carat, price, col = clarity)) + 
  geom_point()


# Adjust for overplotting
ggplot(diamonds, aes(carat, price, col = clarity)) + 
  geom_point(alpha = 0.5)


# Scatter plot: clarity (x), carat (y), price (color)
ggplot(diamonds, aes(clarity, carat, col = price)) + 
  geom_point(alpha = 0.5)


# Dot plot with jittering
ggplot(diamonds, aes(clarity, carat, col = price)) + 
  geom_point(alpha = 0.5, position = "jitter")

