# Filter the data for plotting
# Use the filter() function of dplyr to remove non-European countries. A vector called european_countries has been created that contains all European countries which should remain in the data set. Here, the %in% operator introduced in the video might come in handy. Note that only a subset of European countries for which enough data exist is retained. For instance, Poland is missing.
# 
# Instructions
# 100 XP
# Instructions
# 100 XP
# Print european_countries to the console.
# Apply the filter() function to only retain countries which also appear in the european_countries vector. Use the %in% operator to retain only values that appear in the right-hand side of the operator.


# Examine the European countries vector
european_countries

# Only retain European countries
ilo_data <- ilo_data %>%
  filter(country %in% european_countries)