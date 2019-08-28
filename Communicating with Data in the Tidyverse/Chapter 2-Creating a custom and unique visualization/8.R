# Exercise
# Exercise
# Reordering elements in the plot
# As shown in the video, use mutate() and fct_reorder() to change the factor level ordering of a variable.
# 
# Instructions
# 100 XP
# Use fct_reorder() in the forcats package to reorder the country factor variable by weekly working hours in the year 2006.
# To do that, specify the correct summary function as the third argument of fct_reorder. It should arrange the country factor levels by the last element in the working_hours variable.
# In order to do the above, you first need to arrange() the data set by year - so 1996 is always first in each country group and 2006 is always last.


library(forcats)

# Reorder country factor levels
ilo_data <- ilo_data %>%
  # Arrange data frame
  arrange(year) %>%
  # Reorder countries by working hours in 2006
  mutate(country = fct_reorder(country,
                               working_hours,
                               last))

# Plot again
ggplot(ilo_data) +
  geom_path(aes(x = working_hours, y = country),
            arrow = arrow(length = unit(1.5, "mm"), type = "closed")) +
  geom_text(
    aes(x = working_hours,
        y = country,
        label = round(working_hours, 1))
  )