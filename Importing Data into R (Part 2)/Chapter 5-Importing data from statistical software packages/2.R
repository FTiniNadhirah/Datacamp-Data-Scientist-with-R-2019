# Import STATA data with haven
# Next up are STATA data files; you can use read_dta() for these.
# 
# When inspecting the result of the read_dta() call, you will notice that one column will be imported as a labelled vector, an R equivalent for the common data structure in other statistical environments. In order to effectively continue working on the data in R, it's best to change this data into a standard R class. To convert a variable of the class labelled to a factor, you'll need haven's as_factor() function.
# 
# In this exercise, you will work with data on yearly import and export numbers of sugar, both in USD and in weight. The data can be found at: http://assets.datacamp.com/production/course_1478/datasets/trade.dta
# 
# Instructions
# 100 XP
# Instructions
# 100 XP
# Import the data file directly from the URL using read_dta(), and store it as sugar.
# Print out the structure of sugar. The Date column has class labelled.
# Convert the values in the Date column of sugar to dates, using as.Date(as_factor(___)).
# Print out the structure of sugar once more. Looks better now?

# haven is already loaded
# Import the data from the URL: sugar
sugar <- read_dta("http://assets.datacamp.com/production/course_1478/datasets/trade.dta")
# Structure of sugar
str(sugar)
# Convert values in Date column to dates
sugar$Date <- as.Date(as_factor(sugar$Date))
# Structure of sugar again
str(sugar)