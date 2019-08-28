# JSON practice (2)
# We prepared two more JSON strings in the sample code. Can you change them and call jsonlite's fromJSON() function on them, similar to the previous exercise?
# 
# Instructions
# 100 XP
# Remove characters from json1 to build a 2 by 2 matrix containing only 1, 2, 3 and 4. Call fromJSON() on json1.
# Add characters to json2 such that the data frame in which the json is converted contains an additional observation in the last row. For this observations, a equals 5 and b equals 6. Call fromJSON() one last time, on json2.

# jsonlite is already loaded
# Challenge 1
json1 <- '[[1, 2], [3, 4]]'
fromJSON(json1)
# Challenge 2
json2 <- '[{"a": 1, "b": 2}, {"a": 3, "b": 4},{"a": 5, "b": 6}]'
fromJSON(json2)