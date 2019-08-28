# Alter background color and add margins
# Further customize the look of your plot with more arguments to the theme function call. You can continue working on your ilo_plot object created in the last exercise.
# 
# Instructions
# 100 XP
# Change the overall background color of your plot to "gray95".
# This time, another function than element_text is needed - one for rectangular plot elements. Rewatch the video to know which.
# Look up the correct sequence of margin specifications in the documentation by typing ?theme.
# Using these specifications, add margins to the plot: 5mm top and bottom, 10mm to the left and the right.


ilo_plot +
  # "theme" calls can be stacked upon each other, so this is already the third call of "theme"
  theme(
    plot.background = element_rect(fill = "gray95"),
    plot.margin = unit(c(5, 10, 5, 10), units = "mm")
  )