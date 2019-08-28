# Joining a data.frame
# The netflix and imdb datasets have been loaded into your R session. Your goal is to add IMBD ratings to all series in the netflix dataset, but this time netflix has been loaded in as a data.frame instead of a data.table.
# 
# Instructions
# 100 XP
# Convert netflix to a data.table using the as.data.table() function so that its rownames become a column named "series".
# Right join the new data.table you've just created,netflix_dt, to imdb using the data.table join syntax.

# Convert netflix to a data.table
netflix_dt <- as.data.table(netflix, keep.rownames = "series")

# Right join
imdb[netflix_dt, on = .(title = series)]