# Exercise
# Ordered point chart
# Let's start by improving the point plot we saw in the slides.
# 
# First, change the data manipulation pipeline to filter to the years 1992 and 2002 instead of the default 2006-2016. Note that the array interestingCountries has been loaded and is the same as in the slides.
# 
# Now modify the plotting code to plot the new data, but this time, let's reorder the y-axis in descending order of cases for 1992.
# 
# Instructions
# 100 XP
# Modify filter() to pull the years 1992 and 2002.
# 
# Modify Aesthetics to:
#   
#   Plot the cases for 1992 by country.
# reorder() y-axis by the number of cases.

who_subset <- who_disease %>% 
  filter(
    countryCode %in% interestingCountries,
    disease == 'measles',
    year %in% c(1992, 2002) # Modify years to 1992 and 2002
  ) %>% 
  mutate(year = paste0('cases_', year)) %>% 
  spread(year, cases)

# Reorder y axis and change the cases year to 1992
ggplot(who_subset, aes(x = log10(cases_1992), y = reorder(country, cases_1992))) +
  geom_point()