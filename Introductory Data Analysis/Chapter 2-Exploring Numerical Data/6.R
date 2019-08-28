# Plot selection
# Consider two other columns in the cars dataset: city_mpg and width. Which is the most appropriate plot for displaying the important features of their distributions? Remember, both density plots and box plots display the central tendency and spread of the data, but the box plot is more robust to outliers.
# 
# Instructions
# 100 XP
# Use density plots or box plots to construct the following visualizations. For each variable, try both plots and submit the one that is better at capturing the important structure.
# 
# Display the distribution of city_mpg.
# Display the distribution of width.

# Create plot of city_mpg
cars %>%
  ggplot(aes(x = 1, y = city_mpg)) +
  geom_boxplot()

# Create plot of width
cars %>%
  ggplot(aes(city_mpg)) +
  geom_density()

cars %>%
  ggplot(aes(x = width)) +
  geom_density()
