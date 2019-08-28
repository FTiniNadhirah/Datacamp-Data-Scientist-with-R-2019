# HTTP? httr! (2)
# Web content does not limit itself to HTML pages and files stored on remote servers such as DataCamp's Amazon S3 instances. There are many other data formats out there. A very common one is JSON. This format is very often used by so-called Web APIs, interfaces to web servers with which you as a client can communicate to get or store information in more complicated ways.
# 
# You'll learn about Web APIs and JSON in the video and exercises that follow, but some experimentation never hurts, does it?
#   
#   Instructions
# 100 XP
# Instructions
# 100 XP
# Use GET() to get the url that has already been specified in the sample code. Store the response as resp.
# Print resp. What is the content-type?
#   Use content() to get the content of resp. Set the as argument to "text". Simply print out the result. What do you see?
#   Use content() to get the content of resp, but this time do not specify a second argument. R figures out automatically that you're dealing with a JSON, and converts the JSON to a named R list.

# httr is already loaded

# Get the url
url <- "http://www.omdbapi.com/?apikey=72bc447a&t=Annie+Hall&y=&plot=short&r=json"
resp <- GET(url)
# Print resp
resp
# Print content of resp as text
content(resp,"text")
# Print content of resp
content(resp)

# Print resp


# Print content of resp as text


# Print content of resp
