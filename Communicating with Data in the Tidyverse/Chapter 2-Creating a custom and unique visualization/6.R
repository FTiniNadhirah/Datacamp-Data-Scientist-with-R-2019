# Add arrows to the lines in the plot
# Instead of labeling years, use the arrow argument of the geom_path() call to show the direction of change. The arrows will point from 1996 to 2006, because that's how the data set is ordered. The arrow() function takes two arguments: The first is length, which can be specified with a unit() call, which you might remember from previous exercises. The second is type which defines how the arrow head will look.
# 
# Instructions
# 100 XP
# Use the arrow argument and an arrow() function call to add arrows to each line.
# For the arrows, specify a length of 1.5 "mm" (with a unit() call) and a type of "closed".

ilo_data %>% 
  filter(year %in% c(1996,2006)) %>% 
  ggplot() +
  geom_path(aes(x = working_hours, y = country),
            # Add an arrow to each path
            arrow = arrow(length = unit(1.5, "mm"), type = "closed"))