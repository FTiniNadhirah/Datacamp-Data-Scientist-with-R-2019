# Query tweater (4)
# There are also dedicated SQL functions that you can use in the WHERE clause of an SQL query. For example, CHAR_LENGTH() returns the number of characters in a string.
# 
# Instructions
# 100 XP
# Create a data frame, short, that selects the id and name columns from the users table where the number of characters in the name is strictly less than 5.
# Print short.


# Connect to the database
library(DBI)
con <- dbConnect(RMySQL::MySQL(),
                 dbname = "tweater",
                 host = "courses.csrrinzqubik.us-east-1.rds.amazonaws.com",
                 port = 3306,
                 user = "student",
                 password = "datacamp")
# Create data frame short
short <- dbGetQuery(con,"SELECT id,name FROM users WHERE CHAR_LENGTH(name)<5")
# Print short
short