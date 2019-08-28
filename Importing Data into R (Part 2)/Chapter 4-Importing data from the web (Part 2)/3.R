# OMDb API
# In the video, you saw how easy it is to interact with an API once you know how to formulate requests. You also saw how to fetch all information on Rain Man from OMDb. Simply perform a GET() call, and next ask for the contents with the content() function. This content() function, which is part of the httr package, uses jsonlite behind the scenes to import the JSON data into R.
# 
# However, by now you also know that jsonlite can handle URLs itself. Simply passing the request URL to fromJSON() will get your data into R. In this exercise, you will be using this technique to compare the release year of two movies in the Open Movie Database.
# 
# Instructions
# 100 XP
# Instructions
# 100 XP
# Two URLs are included in the sample code, as well as a fromJSON() call to build sw4. Add a similar call to build sw3.
# Print out the element named Title of both sw4 and sw3. You can use the $ operator. What movies are we dealing with here?
#   Write an expression that evaluates to TRUE if sw4 was released later than sw3. This information is stored in the Year element of the named lists.

# The package jsonlite is already loaded

# Definition of the URLs
url_sw4 <- "http://www.omdbapi.com/?apikey=72bc447a&i=tt0076759&r=json"
url_sw3 <- "http://www.omdbapi.com/?apikey=72bc447a&i=tt0121766&r=json"

# Import two URLs with fromJSON(): sw4 and sw3
sw4 <- fromJSON(url_sw4)
# Import two URLs with fromJSON(): sw4 and sw3
sw4 <- fromJSON(url_sw4)
sw3 <- fromJSON(url_sw3)
# Print out the Title element of both lists
sw4$Title
sw3$Title
# Is the release year of sw4 later than sw3?
sw4$Year > sw3$Year

# Print out the Title element of both lists



# Is the release year of sw4 later than sw3?