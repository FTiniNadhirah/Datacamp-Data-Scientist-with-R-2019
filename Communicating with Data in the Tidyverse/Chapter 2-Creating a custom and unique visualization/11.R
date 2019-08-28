# Optimizing the plot for mobile devices
# The x-axis title is already quite superfluous because you've added labels for both years. You'll now add country labels to the plot, so all of the axes can be removed.
# 
# In this exercise, you're going to encounter something that is probably new to you: New data sets can be given to single geometries like geom_text(), so these geometries don't use the data set given to the initial ggplot() call. In this exercise, you are going to need this because you only want to add one label to each arrow. If you were to use the original data set ilo_data, two labels would be added because there are two observations for each country in the data set, one for 1996 and one for 2006.
# 
# Instructions
# 100 XP
# A new data set median_working_hours was created so there will only be one label per country. Have a look at the structure of it with str().
# Use median_working_hours as the data argument in a new geom_text() call, in order to add labels for each country.
# Correctly specify the required aesthetics for geom_text(): x and label which should point to the right variable in the median_working_hours data set.
# Remove all the axes and the background grid by specifying the element_blank() function for all the axis. and the panel.grid arguments in the custom theme() call.
# After running the final code, resize the plot window on the right to simulate a mobile device screen in portrait mode (narrow and tall) - all labels will fit the plot viewport.


# Compute temporary data set for optimal label placement
median_working_hours <- ilo_data %>%
  group_by(country) %>%
  summarize(median_working_hours_per_country = median(working_hours)) %>%
  ungroup()

# Have a look at the structure of this data set
str(median_working_hours)

ilo_dot_plot +
  # Add label for country
  geom_text(data = median_working_hours,
            aes(y = country,
                x = median_working_hours_per_country,
                label = country),
            vjust = 2,
            family = "Bookman",
            color = "gray25") +
  # Remove axes and grids
  theme(
    axis.ticks = element_blank(),
    axis.title = element_blank(),
    axis.text = element_blank(),
    panel.grid = element_blank(),
    # Also, let's reduce the font size of the subtitle
    plot.subtitle = element_text(size = 9)
  )