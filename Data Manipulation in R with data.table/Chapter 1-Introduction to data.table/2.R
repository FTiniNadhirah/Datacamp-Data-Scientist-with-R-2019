# Introducing bikes data
# Throughout the rest of the course, you will use the batrips dataset from the bikeshare14 package, which contains anonymous bike share data on bicycle trips around San Francisco in 2014. Type batrips in the console and hit enter. Note how data.table automatically limits printing to just the top 5 and bottom 5 rows of the dataset along with column names and row numbers.
# 
# Recall that since a data.table is a data.frame, you can use base R functions like ncol(), nrow(), head(), tail() and str() for exploring data.tables.
# 
# Unless otherwise mentioned, assume that both data.table and batrips are loaded in your exercises.
# 
# Instructions 4/4
# 25 XP
# Instructions 4/4
# 25 XP
# Get the number of columns in batrips and store it in col_number.
# 
# Print the first eight rows of batrips.
# 
# Print the last eight rows using tail().
# 
# Print the structure of batrips.

# Get number of columns in batrips
col_number <- ncol(batrips)

# Print the first 8 rows
head(batrips, 8)

# Print the last 8 rows
tail(batrips, 8)

# Print the structure of batrips
str(batrips)