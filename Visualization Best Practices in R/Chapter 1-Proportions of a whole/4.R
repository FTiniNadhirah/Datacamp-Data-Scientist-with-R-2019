# Exercise
# Exercise
# Cleaning up the pie
# The pie chart you made in the last plot is good, but it's a little cluttered. Let's clean it up using the ggplot function theme_void() along with giving it a meaningful title with ggtitle(...).
# 
# The disease_counts summarized dataframe from the last exercise is already loaded for you.
# 
# Instructions
# 100 XP
# Add theme_void() to the ggplot object to clean up the background.
# Give the plot the title 'Proportion of diseases'.

ggplot(disease_counts, aes(x = 1, y = total_cases, fill = disease)) +
  # Use a column geometry.
  geom_col() +
  # Change coordinate system to polar.
  coord_polar(theta = "y") +
  # Clean up the background with theme_void and give it a proper title with ggtitle.
  theme_void() +
  ggtitle('Proportion of diseases')