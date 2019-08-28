# Query tweater (3)
# Suppose that you have a people table, with a bunch of information. This time, you want to find out the age and country of married males. Provided that there is a married column that's 1 when the person in question is married, the following query would work.
# 
# SELECT age, country
#   FROM people
#     WHERE gender = "male" AND married = 1
# Can you use a similar approach for a more specialized query on the tweater database?
# 
# Instructions
# 100 XP
# Instructions
# 100 XP
# Create an R data frame, specific, that selects the message column from the comments table where the tweat_id is 77 and the user_id is greater than 4.
# Print specific.

# Connect to the database
library(DBI)
con <- dbConnect(RMySQL::MySQL(),
                 dbname = "tweater",
                 host = "courses.csrrinzqubik.us-east-1.rds.amazonaws.com",
                 port = 3306,
                 user = "student",
                 password = "datacamp")
# Create data frame specific
specific <- dbGetQuery(con,"SELECT message FROM comments WHERE tweat_id = 77 AND user_id >4")
# Print specific
specific