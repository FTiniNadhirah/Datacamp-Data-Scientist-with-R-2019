# Change the viewport so labels don't overlap with plot border
# Use a function introduced in the previous video to change the viewport of the plotting area. Also apply your custom theme.
# 
# Instructions
# 100 XP
# Fix the label overlap problem by resetting the x-limits of the cartesian coordinate system to 25 and 41. Make sure to use a function that doesn't clip the geometries in your plot.
# Remember your custom theme_ilo() function? Apply it to the plot.


# Reuse ilo_dot_plot
ilo_dot_plot <- ilo_dot_plot +
  # Add labels to the plot
  labs(
    x = "Working hours per week",
    y = "Country",
    title = "People work less in 2006 compared to 1996",
    subtitle = "Working hours in European countries, development since 1996",
    caption = "Data source: ILO, 2017"
  ) +
  # Apply your theme
  theme_ilo() +
  # Change the viewport
  coord_cartesian(xlim = c(25, 41))

# View the plot
ilo_dot_plot