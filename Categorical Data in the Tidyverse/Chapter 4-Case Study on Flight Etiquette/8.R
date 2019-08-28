# Flipping things around
# When the labels for our x-axis run into each other, we have two main choices: change the labels to be vertical instead of horizontal or flip the axes. The latter is how the FiveThirtyEight graph did it and makes it easier to read the labels. The plot you created in the previous exercise, titled_plot, has been loaded for you.
# 
# Instructions
# 100 XP
# Flip the x- and y-axis.
# Remove the x-axis ticks.


flipped_plot <- titled_plot + 
  # Flip the axes
  coord_flip() + 
  # Remove the x-axis ticks and labels
  theme(axis.text.x = element_blank(),
        axis.ticks.x = element_blank())