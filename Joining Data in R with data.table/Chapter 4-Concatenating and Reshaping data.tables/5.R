# Identifying observations unique to a table
# An additional data.table has been loaded into your R session, middle_east, along with the gdp list of data tables from the previous exercise. The middle_east data table contains the set of countries in the Middle East, a geopolitical region which spans parts of Europe, Africa, and Asia. All countries in the middle_east data table appear in one or more data tables in the gdp list. Your goal is to print data tables containing all countries in Africa, Europe, and Asia, that are not found in the middle_east.
# 
# Instructions
# 100 XP
# Print a new data.table containing rows from gdp$africa that are not present in middle_east.
# Print a new data.table containing rows from gdp$asia that are not present in middle_east.
# Print a new data.table containing rows from gdp$europe that are not present in middle_east.

# Which countries are in Africa but not considered part of the middle east?
fsetdiff(gdp$africa, middle_east)

# Which countries are in Asia but not considered part of the middle east?
fsetdiff(gdp$asia, middle_east)

# Which countries are in Europe but not considered part of the middle east?
fsetdiff(gdp$europe, middle_east)