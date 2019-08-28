# Apply a default theme
# As you've learnt in the videos, ggplot2 comes with a set of predefined themes. Try out some of them!
# 
# Instructions
# 100 XP
# Save your plot object into a variable called ilo_plot so you can save some typing later on.
# Try out the theme_minimal ggplot2 theme on ilo_plot.
# Well done! Now, try another possible ggplot2 theme of your choosing.


# Save your current plot into a variable: ilo_plot
ilo_plot <- ggplot(plot_data) +
  geom_point(aes(x = working_hours, y = hourly_compensation)) +
  labs(
    x = "Working hours per week",
    y = "Hourly compensation",
    title = "The more people work, the less compensation they seem to receive",
    subtitle = "Working hours and hourly compensation in European countries, 2006",
    caption = "Data source: ILO, 2017"
  )

# Try out theme_minimal
ilo_plot +
  theme_minimal()

# Try out any other possible theme function
ilo_plot +
  theme_light() 