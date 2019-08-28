# List columns
# This "nested" data has an interesting structure. The second column, data, is a list, a type of R object that hasn't yet come up in this course that allows complicated objects to be stored within each row. This is because each item of the data column is itself a data frame.
# 
# # A tibble: 200 × 2
#                            country              data
#                              <chr>            <list>
# 1                      Afghanistan <tibble [34 × 3]>
# 2                        Argentina <tibble [34 × 3]>
# 3                        Australia <tibble [34 × 3]>
# 4                          Belarus <tibble [34 × 3]>
# 5                          Belgium <tibble [34 × 3]>
# 6  Bolivia, Plurinational State of <tibble [34 × 3]>
# 7                           Brazil <tibble [34 × 3]>
# 8                           Canada <tibble [34 × 3]>
# 9                            Chile <tibble [34 × 3]>
# 10                        Colombia <tibble [34 × 3]>
# You can use nested$data to access this list column and double brackets to access a particular element. For example, nested$data[[1]] would give you the data frame with Afghanistan's voting history (the percent_yes per year), since Afghanistan is the first row of the table.
# 
# Instructions
# 100 XP
# Print the data frame from the data column that contains the data for Brazil.
# All countries are nested besides country
nested <- by_year_country %>%
  nest(-country)

nested$data[[1]]

# Print the nested data for Brazil
nested$data[nested$country == 'Brazil']
