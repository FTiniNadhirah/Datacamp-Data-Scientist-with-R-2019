# Working with geom_col
# In ggplot, there are two different ways to make bar plots: geom_col() and geom_bar().
# 
# If your data is in the form where the height of the bar is encoded in a column that you want to map to the y-axis, like counts of diseases are in our data, you want to use the geom_col() option.
# 
# Let's make a barplot of the number of cases recorded by disease for India in 1980 using geom_col().
# 
# Instructions
# 100 XP
# filter() the data to the country of India and the year 1980 with country == "India", year == 1980.
# Map disease to the x-axis and cases to the y-axis in the aes() call.
# Add a geom_col() geometry.

who_disease %>% 
  # filter to india in 1980
  filter(country == "India", year ==1980) %>% 
  # map x aesthetic to disease and y to cases
  ggplot(aes(x=disease, y=cases)) +
  # use geom_col to draw
  geom_col()