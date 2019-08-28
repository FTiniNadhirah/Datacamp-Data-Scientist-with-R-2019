# Getting keys
# You can also get and set the keys programmatically. In this exercise, only one of netflix and imdb has their key set. Your job is to find out which data.table has had their key set, then use that to set the key for the other data.table.
# 
# Instructions
# 100 XP
# Check whether netflix and imdb have had any key set.
# Assign the key of the data.table which has a key to the_key.
# Set the key of the other data.table using the_key.

# Check for keys
haskey(netflix)
haskey(imdb)

# Find the key
the_key <- key(netflix)

# Set the key for the other data.table
setkeyv(imdb, the_key)