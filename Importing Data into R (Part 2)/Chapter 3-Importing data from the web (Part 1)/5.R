# HTTP? httr! (1)
# Downloading a file from the Internet means sending a GET request and receiving the file you asked for. Internally, all the previously discussed functions use a GET request to download files.
# 
# httr provides a convenient function, GET() to execute this GET request. The result is a response object, that provides easy access to the status code, content-type and, of course, the actual content.
# 
# You can extract the content from the request using the content() function. At the time of writing, there are three ways to retrieve this content: as a raw object, as a character vector, or an R object, such as a list. If you don't tell content() how to retrieve the content through the as argument, it'll try its best to figure out which type is most appropriate based on the content-type.
# 
# Instructions
# 100 XP
# Instructions
# 100 XP
# Load the httr package. It's already installed on DataCamp's servers.
# Use GET() to get the URL stored in url. Store the result of this GET() call as resp.
# Print the resp object. What information does it contain?
#   Get the content of resp using content() and set the as argument to "raw". Assign the resulting vector to raw_content.
# Print the first values in raw_content with head().

# Load the httr package
library(httr)
# Get the url, save response to resp
url <- "http://www.example.com/"
resp <- GET(url)
# Print resp
resp
# Get the raw content of resp: raw_content
raw_content <- content(resp,"raw")
# Print the head of raw_content
head(raw_content)