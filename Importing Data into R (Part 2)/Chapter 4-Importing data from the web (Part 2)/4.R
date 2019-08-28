# JSON practice (1)
# JSON is built on two structures: objects and arrays. To help you experiment with these, two JSON strings are included in the sample code. It's up to you to change them appropriately and then call jsonlite's fromJSON() function on them each time.
# 
# Instructions
# 100 XP
# Change the assignment of json1 such that the R vector after conversion contains the numbers 1 up to 6, in ascending order. Next, call fromJSON() on json1.
# Adapt the code for json2 such that it's converted to a named list with two elements: a, containing the numbers 1, 2 and 3 and b, containing the numbers 4, 5 and 6. Next, call fromJSON() on json2.

# jsonlite is already loaded
# Challenge 1
json1 <- '[1, 2, 3, 4, 5, 6]'
fromJSON(json1)
# Challenge 2
json2 <- ('{"a": [1, 2, 3],"b": [4, 5, 6]}')
fromJSON(json2)