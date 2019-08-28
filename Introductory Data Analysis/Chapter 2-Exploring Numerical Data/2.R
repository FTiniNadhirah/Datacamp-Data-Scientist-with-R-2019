# Boxplots and density plots
# The mileage of a car tends to be associated with the size of its engine (as measured by the number of cylinders). To explore the relationship between these two variables, you could stick to using histograms, but in this exercise you'll try your hand at two alternatives: the box plot and the density plot.
# 
# Instructions
# 100 XP
# Instructions
# 100 XP
# A quick look at unique(cars$ncyl) shows that there are more possible levels of ncyl than you might think. Here, restrict your attention to the most common levels.
# 
# Filter cars to include only cars with 4, 6, or 8 cylinders and save the result as common_cyl. The %in% operator may prove useful here.
# Create side-by-side box plots of city_mpg separated out by ncyl.
# Create overlaid density plots of city_mpg colored by ncyl.

# Filter cars with 4, 6, 8 cylinders
common_cyl <- filter(cars, ncyl %in% c(4,6,8))

# Create box plots of city mpg by ncyl
ggplot(common_cyl, aes(x = as.factor(ncyl), y = city_mpg)) +
  geom_boxplot()

# Create overlaid density plots for same data
ggplot(common_cyl, aes(x = city_mpg, fill = as.factor(ncyl))) +
  geom_density(alpha = .3)