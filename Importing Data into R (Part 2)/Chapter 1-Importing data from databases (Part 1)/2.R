# List the database tables
# After you've successfully connected to a remote MySQL database, the next step is to see what tables the database contains. You can do this with the dbListTables() function. As you might remember from the video, this function requires the connection object as an input, and outputs a character vector with the table names.
# 
# Instructions
# 100 XP
# Add code to create a vector tables, that contains the tables in the tweater database. You can connect to this database through the con object.
# Display the structure of tables; what's the class of this vector?

# Load the DBI package
library(DBI)
# Connect to the MySQL database: con
con <- dbConnect(RMySQL::MySQL(), 
                 dbname = "tweater", 
                 host = "courses.csrrinzqubik.us-east-1.rds.amazonaws.com", 
                 port = 3306,
                 user = "student",
                 password = "datacamp")
# Build a vector of table names: tables
tables <- dbListTables(con,"tweater")
# Display structure of tables
str(tables)