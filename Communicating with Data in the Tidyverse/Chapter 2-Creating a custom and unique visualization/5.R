# A basic dot plot
# As shown in the video, use only geom_path() to create the basic structure of the dot plot.
# 
# Instructions
# 100 XP
# Create a new ggplot object which takes ilo_data as data set.
# Add a geom_path() geometry where the weekly working hours are mapped to the x-axis and countries to the y-axis.

# Create the dot plot
ilo_data %>% 
  filter(year %in% c(1996,2006)) %>% 
  ggplot() +
  geom_path(aes(x = working_hours, y = country))