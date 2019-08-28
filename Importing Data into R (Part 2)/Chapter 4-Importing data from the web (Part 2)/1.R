# From JSON to R
# In the simplest setting, fromJSON() can convert character strings that represent JSON data into a nicely structured R list. Give it a try!
#   
#   Instructions
# 100 XP
# Load the jsonlite package. It's already installed on DataCamp's servers.
# wine_json represents a JSON. Use fromJSON() to convert it to a list, named wine.
# Display the structure of wine

# Load the jsonlite package
library(jsonlite)
# wine_json is a JSON
wine_json <- '{"name":"Chateau Migraine", "year":1997, "alcohol_pct":12.4, "color":"red", "awarded":false}'
# Convert wine_json into a list: wine
wine <- fromJSON(wine_json)
# Print structure of wine
str(wine) 