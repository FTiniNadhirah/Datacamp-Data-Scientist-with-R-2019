# Be polite and ...
# Every time you connect to a database using dbConnect(), you're creating a new connection to the database you're referencing. RMySQL automatically specifies a maximum of open connections and closes some of the connections for you, but still: it's always polite to manually disconnect from the database afterwards. You do this with the dbDisconnect() function.
# 
# The code that connects you to the database is already available, can you finish the script?
# 
# Instructions
# 100 XP
# Instructions
# 100 XP
# Using the technique you prefer, build a data frame long_tweats. It selects the post and date columns from the observations in tweats where the character length of the post variable exceeds 40.
# Print long_tweats.
# Disconnect from the database by using dbDisconnect().

# Load RMySQL package
library(DBI)
# Connect to the database
library(DBI)
con <- dbConnect(RMySQL::MySQL(),
                 dbname = "tweater",
                 host = "courses.csrrinzqubik.us-east-1.rds.amazonaws.com",
                 port = 3306,
                 user = "student",
                 password = "datacamp")
# Create the data frame  long_tweats
long_tweats <- dbGetQuery(con,"SELECT post,date FROM tweats WHERE CHAR_LENGTH(post)>=40")
# Print long_tweats
print(long_tweats)
# Disconnect from the database
dbDisconnect(con)