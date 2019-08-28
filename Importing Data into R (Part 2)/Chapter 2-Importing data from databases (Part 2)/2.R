# Query tweater (2)
# Apart from checking equality, you can also check for less than and greater than relationships, with < and >, just like in R.
# 
# con, a connection to the tweater database, is again available.
# 
# Instructions
# 100 XP
# Create a data frame, latest, that selects the post column from the tweats table observations where the date is higher than '2015-09-21'.
# Print out latest.

# Connect to the database
library(DBI)
con <- dbConnect(RMySQL::MySQL(),
                 dbname = "tweater",
                 host = "courses.csrrinzqubik.us-east-1.rds.amazonaws.com",
                 port = 3306,
                 user = "student",
                 password = "datacamp")

# Import post column of tweats where date is higher than '2015-09-21': latest
latest <- dbGetQuery(con,"SELECT post FROM tweats WHERE date > '2015-09-21'")
# Print latest
latest