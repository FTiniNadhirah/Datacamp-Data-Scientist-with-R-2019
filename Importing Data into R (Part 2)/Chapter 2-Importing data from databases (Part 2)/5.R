# Send - Fetch - Clear
# You've used dbGetQuery() multiple times now. This is a virtual function from the DBI package, but is actually implemented by the RMySQL package. Behind the scenes, the following steps are performed:
# 
# Sending the specified query with dbSendQuery();
# Fetching the result of executing the query on the database with dbFetch();
# Clearing the result with dbClearResult().
# Let's not use dbGetQuery() this time and implement the steps above. This is tedious to write, but it gives you the ability to fetch the query's result in chunks rather than all at once. You can do this by specifying the n argument inside dbFetch().
# 
# Instructions
# 100 XP
# Instructions
# 100 XP
# Inspect the dbSendQuery() call that has already been coded for you. It selects the comments for the users with an id above 4.
# Use dbFetch() twice. In the first call, import only two records of the query result by setting the n argument to 2. In the second call, import all remaining queries (don't specify n). In both calls, simply print the resulting data frames.
# Clear res with dbClearResult().

# Connect to the database
library(DBI)
con <- dbConnect(RMySQL::MySQL(),
                 dbname = "tweater",
                 host = "courses.csrrinzqubik.us-east-1.rds.amazonaws.com",
                 port = 3306,
                 user = "student",
                 password = "datacamp")
# Send query to the database
res <- dbSendQuery(con, "SELECT * FROM comments WHERE user_id > 4")
# Use dbFetch() twice
dbFetch(res,n=2)
dbFetch(res)
# Clear res
dbClearResult(res)