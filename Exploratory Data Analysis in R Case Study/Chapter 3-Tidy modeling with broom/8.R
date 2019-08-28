# Tidy each linear regression model
# You've now performed a linear regression on each nested dataset and have a linear model stored in the list column model. But you can't recombine the models until you've tidied each into a table of coefficients. To do that, you'll need to use map() one more time and the tidy() function from the broom package.
# 
# Recall that you can simply give a function to map() (e.g. map(models, tidy)) in order to apply that function to each item of a list.
# 
# Instructions
# 100 XP
# Load the broom package.
# Use the map() function to apply the tidy() function to each linear model in the model column, creating a new column called tidied.

# Load the broom package
library(broom)

# Add another mutate that applies tidy() to each model
by_year_country %>%
  group_by(country) %>%
  nest() %>%
  mutate(
    model = map(data, ~ lm(percent_yes ~ year, data = .)),
    tidied = map(model, tidy)
  )