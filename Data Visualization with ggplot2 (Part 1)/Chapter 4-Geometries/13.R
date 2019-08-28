# Multiple time series, part 2
# Now that you have tidy data, you're ready to make your plot! The data frame fish.tidy is already available in the workspace, so you can start right away!
# 
# Instructions
# 100 XP
# Use ggplot2 and everything you've learned to recreate the plot shown on the right.

# Recreate the plot shown on the right
ggplot(fish.tidy, aes(x = Year, y = Capture, col = Species)) +
  geom_line()