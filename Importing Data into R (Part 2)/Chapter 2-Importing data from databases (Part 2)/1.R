# Query tweater (1)
# In your life as a data scientist, you'll often be working with huge databases that contain tables with millions of rows. If you want to do some analyses on this data, it's possible that you only need a fraction of this data. In this case, it's a good idea to send SQL queries to your database, and only import the data you actually need into R.
# 
# dbGetQuery() is what you need. As usual, you first pass the connection object to it. The second argument is an SQL query in the form of a character string. This example selects the age variable from the people dataset where gender equals "male":
# 
# dbGetQuery(con, "SELECT age FROM people WHERE gender = 'male'")
# A connection to the tweater database has already been coded for you.
# 
# Instructions
# 100 XP
# Instructions
# 100 XP
# Use dbGetQuery() to create a data frame, elisabeth, that selects the tweat_id column from the comments table where elisabeth is the commenter, her user_id is 1
# Print out elisabeth so you can see if you queried the database correctly.

# Connect to the database
library(DBI)
con <- dbConnect(RMySQL::MySQL(),
                 dbname = "tweater",
                 host = "courses.csrrinzqubik.us-east-1.rds.amazonaws.com",
                 port = 3306,
                 user = "student",
                 password = "datacamp")
# Import tweat_id column of comments where user_id is 1: elisabeth
elisabeth <- dbGetQuery(con,"SELECT tweat_id FROM comments WHERE user_id= 1")
# Print elisabeth
elisabeth