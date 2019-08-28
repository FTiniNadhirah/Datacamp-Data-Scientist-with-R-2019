# Import users
# As you might have guessed by now, the database contains data on a more tasty version of Twitter, namely Tweater. Users can post tweats with short recipes for delicious snacks. People can comment on these tweats. There are three tables: users, tweats, and comments that have relations among them. Which ones, you ask? You'll discover in a moment!
# 
# Let's start by importing the data on the users into your R session. You do this with the dbReadTable() function. Simply pass it the connection object (con), followed by the name of the table you want to import. The resulting object is a standard R data frame.
# 
# Instructions
# 100 XP
# Add code that imports the "users" table from the tweater database and store the resulting data frame as users.
# Print the users data frame.

# Load the DBI package
library(DBI)
# Connect to the MySQL database: con
con <- dbConnect(RMySQL::MySQL(), 
                 dbname = "tweater", 
                 host = "courses.csrrinzqubik.us-east-1.rds.amazonaws.com", 
                 port = 3306,
                 user = "student",
                 password = "datacamp")
# Import the users table from tweater: users
users <- dbReadTable(con,"users")
# Print users
users