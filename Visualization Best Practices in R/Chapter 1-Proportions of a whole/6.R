# Exercise
# Exercise
# Basic stacked bars
# When we made the pie and waffle charts in the last exercises, we looked at all years in the data combined together.
# 
# Now, we're interested in looking at these patterns over time. To do this we will make a stacked bar chart with the x-axis being the year of observation. Like we did with the pie chart before, we will simplify the data to just be measles, mumps, and other.
# 
# Do you notice anything funky in the data after visualizing it this way?
# 
# Instructions
# 100 XP
# Modify the aes() call to include the year mapped to the x-axis.
# Make bars fill the entire y-axis by adjusting position argument in geom_col().

disease_counts <- who_disease %>%
  mutate(disease = ifelse(disease %in% c('measles', 'mumps'), disease, 'other')) %>%
  group_by(disease, year) %>% # note the addition of year to the grouping.
  summarise(total_cases = sum(cases))

# add the mapping of year to the x axis. 
ggplot(disease_counts, aes(x = year, y = total_cases, fill = disease)) +
  # Change the position argument to make bars full height
  geom_col(position = 'fill')