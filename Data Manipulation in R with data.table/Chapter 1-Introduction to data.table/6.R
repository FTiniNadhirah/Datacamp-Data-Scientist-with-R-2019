# I %like% data.tables
# %like% is a very useful function to filter rows from data.tables that match a pattern, as opposed to exact matches as seen in the previous exercise. It can be used independently on a vector as well, for example:
#   
#   x <- c("aaba", "aaba", "baca")
#   
#   # Search for "aa" anywhere in the string
#   x %like% "aa"
#   [1]  TRUE  TRUE FALSE
#   
#   # Search for "ba" at the end of a string
#   x %like% "ba$"
#   [1]  TRUE  TRUE FALSE
#   The metacharacter $ indicates that you are searching for the string that ends with a specific pattern.
#   
#   Instructions 2/2
#   0 XP
#   Use %like% to filter all rows where end_station contains the text "Market".
#   
#   2
#   Use %like% to filter all rows where end_station ends the text "Market".

# Filter all rows where end_station contains "Market"
any_markets <- batrips[end_station %like% "Market"]
any_markets

# Filter all rows where end_station ends with "Market"
end_markets <- batrips[end_station %like% "Market$"]
end_markets