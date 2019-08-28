# Import all tables
# Next to the users, we're also interested in the tweats and comments tables. However, separate dbReadTable() calls for each and every one of the tables in your database would mean a lot of code duplication. Remember about the lapply() function? You can use it again here! A connection is already coded for you, as well as a vector table_names, containing the names of all the tables in the database.
# 
# Instructions
# 100 XP
# Finish the lapply() function to import the users, tweats and comments tables in a single call. The result, a list of data frames, will be stored in the variable tables.
# Print tables to check if you got it right.

# Load the DBI package
library(DBI)

# Connect to the MySQL database: con
con <- dbConnect(RMySQL::MySQL(), 
                 dbname = "tweater", 
                 host = "courses.csrrinzqubik.us-east-1.rds.amazonaws.com", 
                 port = 3306,
                 user = "student",
                 password = "datacamp")

# Get table names
table_names <- dbListTables(con)
# Import all tables
tables <- lapply(table_names, dbReadTable, conn = con)
# Print out tables
tables
