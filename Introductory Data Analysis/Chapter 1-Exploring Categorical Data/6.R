# Conditional barchart
# Now, if you want to break down the distribution of alignment based on gender, you're looking for conditional distributions.
# 
# You could make these by creating multiple filtered datasets (one for each gender) or by faceting the plot of alignment based on gender. As a point of comparison, we've provided your plot of the marginal distribution of alignment from the last exercise.
# 
# Instructions
# 100 XP
# Create a barchart of align faceted by gender.

# Plot of alignment broken down by gender
ggplot(comics, aes(x = align)) + 
  geom_bar() +
  facet_wrap(~ gender)