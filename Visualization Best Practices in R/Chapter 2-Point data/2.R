# Wrangling geom_bar
# Whereas geom_col() expects you to pass it a y-axis mapping column, geom_bar() doesn't take a y-axis call (at least by default).
# 
# Instead, geom_bar() takes your x-axis mapping and counts every single observation (or row of the passed dataframe) for each class and then draws bars of corresponding heights
# 
# These two code chunks will give you the same plot:
# 
# # geom_col()
# data %>%
#   groupby(xAxisCol) %>%
#   summarize(value = n()) %>%
#   ggplot(aes(x = xAxisCol, y = value) + 
#   geom_col()
# 
# # geom_bar()
# data %>%
#   ggplot(aes(x = xAxisCol)) +
#   geom_bar()
# Let's use geom_bar() to make a look at observations with a large number of cases by region our WHO data.
# 
# Instructions
# 100 XP
# Instructions
# 100 XP
# filter() the who_disease data into only observations (rows) with greater than 1000 cases.
# Map the x-axis to the region column.
# Add geom_bar() to the plot object to draw the bars.

who_disease %>%
  # filter data to observations of greater than 1,000 cases
  filter(cases > 1000) %>%
  # map the x-axis to the region column
  ggplot(aes(x = region)) +
  # add a geom_bar call
  geom_bar()