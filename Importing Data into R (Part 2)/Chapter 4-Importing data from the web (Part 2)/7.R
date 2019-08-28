# Minify and prettify
# JSONs can come in different formats. Take these two JSONs, that are in fact exactly the same: the first one is in a minified format, the second one is in a pretty format with indentation, whitespace and new lines:
#   
#   # Mini
#   {"a":1,"b":2,"c":{"x":5,"y":6}}
# 
# # Pretty
# {
#   "a": 1,
#   "b": 2,
#   "c": {
#     "x": 5,
#     "y": 6
#   }
# }
# Unless you're a computer, you surely prefer the second version. However, the standard form that toJSON() returns, is the minified version, as it is more concise. You can adapt this behavior by setting the pretty argument inside toJSON() to TRUE. If you already have a JSON string, you can use prettify() or minify() to make the JSON pretty or as concise as possible.
# 
# Instructions
# 100 XP
# Convert the mtcars dataset, which is available in R by default, to a pretty JSON. Call the resulting JSON pretty_json.
# Print out pretty_json. Can you understand the output easily?
# Convert pretty_json to a minimal version using minify(). Store this version under a new variable, mini_json.
# Print out mini_json. Which version do you prefer, the pretty one or the minified one?

# jsonlite is already loaded
# Convert mtcars to a pretty JSON: pretty_json
pretty_json <- toJSON(mtcars,pretty = TRUE)
# Print pretty_json
pretty_json
# Minify pretty_json: mini_json
mini_json <- minify(pretty_json)
# Print mini_json
mini_json