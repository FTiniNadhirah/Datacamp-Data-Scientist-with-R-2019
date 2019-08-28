# Add labels to the plot
# As mentioned in the video, you're going to enhance the plot from the previous exercise by adding a title, a subtitle, and a caption to the plot as well as giving the axes meaningful names. You're going to use the labs() function to do this - try using ?labs in the console to see the available options.
# 
# Instructions
# 100 XP
# Instructions
# 100 XP
# Use the labs() function to annotate your plot.
# Specify the correct arguments in the labs function call.
# Use ?labs to fire up the help function and see what arguments the labs() call takes.
# While it should be clear to what arguments most of the annotations should go, "The more people work, the less compensation they seem to receive" should be the title of the plot.


# Create the plot
ggplot(plot_data) +
  geom_point(aes(x = working_hours, y = hourly_compensation)) +
  # Add labels
  labs(
    x = "Working hours per week",
    y = "Hourly compensation",
    title = "The more people work, the less compensation they seem to receive",
    subtitle = "Working hours and hourly compensation in European countries, 2006",
    caption = "Data source: ILO, 2017"
  )