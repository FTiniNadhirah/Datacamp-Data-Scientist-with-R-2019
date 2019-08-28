# A basic scatter plot
# In this exercise, you will create a very basic scatter plot with ggplot2. This is mostly a repetition of stuff you've learnt in the prerequisites for this course, so it should be easy for you.
# 
# Instructions
# 100 XP
# Filter the data for the year 2006. Save this filtered data set in a new variable called plot_data.
# Use plot_data to create a scatter plot with working_hours on the x-axis and hourly_compensation on the y-axis.


# Filter for 2006
plot_data <- ilo_data %>%
  filter(year == 2006)

# Create the scatter plot
ggplot(plot_data) +
  geom_point(aes(x = working_hours, y = hourly_compensation))