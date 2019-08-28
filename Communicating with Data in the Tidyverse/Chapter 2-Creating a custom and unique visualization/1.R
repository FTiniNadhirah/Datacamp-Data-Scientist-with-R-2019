# Prepare the data set for the faceted plot
# You're now going to prepare your data set for producing the faceted scatter plot in the next exercise, as mentioned in the video. For this, the data set needs to contain only the years 1996 and 2006, because your plot will only have two facets. ilo_data has been pre-loaded for you.
# 
# Instructions
# 100 XP
# Use filter() to only retain the years 1996 and 2006 in the data set.
# Use the OR operator in your filter() function call.

# Filter ilo_data to retain the years 1996 and 2006
ilo_data <- ilo_data %>%
  filter(year == "1996" | year == "2006")