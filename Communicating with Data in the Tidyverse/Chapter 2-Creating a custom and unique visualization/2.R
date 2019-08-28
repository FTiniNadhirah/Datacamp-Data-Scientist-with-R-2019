# Add facets to the plot
# Use facet_grid() in order to add horizontal facets for 1996 and 2006 each, as detailed in the video.
# 
# Instructions
# 100 XP
# Specify the correct formula in facet_grid() to generate two separate scatter plots with one function call.
# Arrange the plots horizontally, so the year 1996 is on the left side, the year 2006 on the right side.

# Again, you save the plot object into a variable so you can save typing later on
ilo_plot <- ggplot(ilo_data, aes(x = working_hours, y = hourly_compensation)) +
  geom_point() +
  labs(
    x = "Working hours per week",
    y = "Hourly compensation",
    title = "The more people work, the less compensation they seem to receive",
    subtitle = "Working hours and hourly compensation in European countries, 2006",
    caption = "Data source: ILO, 2017"
  ) +
  # Add facets here
  facet_grid(facets = . ~ year)

ilo_plot