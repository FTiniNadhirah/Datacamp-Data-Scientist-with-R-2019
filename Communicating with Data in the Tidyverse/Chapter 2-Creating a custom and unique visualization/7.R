# Exercise
# Exercise
# Add some labels to each country
# A nice thing that can be added to plots are annotations or labels, so readers see the value of each data point displayed in the plot panel. This often makes axes obsolete, an advantage you're going to use in the last exercise of this chapter. These labels are usually added with geom_text() or geom_label(). The latter adds a background to each label, which is not needed here.
# 
# Instructions
# 100 XP
# Label both points on the line with their respective working hours value. Use the geom_text() function for this, with the x- and y-aesthetic identical to the one in the geom_path() call.
# Specify the working_hours variable for the label argument. Round working_hours to one digit after the decimal point.

ilo_data %>% 
  filter(year %in% c(1996,2006)) %>% 
  ggplot() +
  geom_path(aes(x = working_hours, y = country),
            arrow = arrow(length = unit(1.5, "mm"), type = "closed")) +
  # Add a geom_text() geometry
  geom_text(
    aes(x = working_hours,
        y = country,
        label = round(working_hours, 1))
  )