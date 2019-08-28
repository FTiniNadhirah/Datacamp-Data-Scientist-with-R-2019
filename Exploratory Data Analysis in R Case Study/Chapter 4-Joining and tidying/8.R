# Nesting by topic and country
# In the last chapter, you constructed a linear model for each country by nesting the data in each country, fitting a model to each dataset, then tidying each model with broom and unnesting the coefficients. The code looked something like this:
#   
#   country_coefficients <- by_year_country %>%
#   nest(-country) %>%
#   mutate(model = map(data, ~ lm(percent_yes ~ year, data = .)),
#          tidied = map(model, tidy)) %>%
#   unnest(tidied)
# Now, you'll again be modeling change in "percentage" yes over time, but instead of fitting one model for each country, you'll fit one for each combination of country and topic.
# 
# Instructions
# 100 XP
# Instructions
# 100 XP
# Load the purrr, tidyr, and broom packages.
# Print the by_country_year_topic dataset to the console.
# Fit a linear model within each country and topic in this dataset, saving the result as country_topic_coefficients. You can use the above code as a starting point.
# Print the country_topic_coefficients dataset to the console.


# Load purrr, tidyr, and broom
library(purrr)
library(tidyr)
library(broom)

# Print by_country_year_topic
by_country_year_topic

# Fit model on the by_country_year_topic dataset
country_topic_coefficients <- by_country_year_topic %>%
  nest(-country, -topic) %>%
  mutate(
    model = map(data, ~ lm(percent_yes ~ year, data = .)),
    tidied = map(model, tidy)
  ) %>%
  unnest(tidied)


# Print country_topic_coefficients
country_topic_coefficients
