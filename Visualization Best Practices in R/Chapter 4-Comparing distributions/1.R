# A simple boxplot
# Let's get started by simply making a box plot similar to the ones we made in the slides.
# 
# Modify the filter() to look at 'RED' cars instead of blue and then map the x-axis to gender and the y-axis to driver speed. Add your boxplot geometry and give it a title.
# 
# Instructions
# 100 XP
# Modify filter() command to filter to 'RED' vehicles.
# Fill in aes() by mapping x to gender and y to speed.
# Add a boxplot geometry to the plot.
# Title plot 'Speed of red cars by gender of driver'.

md_speeding %>% 
  filter(vehicle_color == 'RED') %>%
  # Map x and y to gender and speed columns respectively
  ggplot(aes(x = gender, y = speed)) + 
  # add a boxplot geometry
  geom_boxplot()
# give plot supplied title
labs(title = 'Speed of red cars by gender of driver')