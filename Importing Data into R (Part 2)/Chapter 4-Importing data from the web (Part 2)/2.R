# Quandl API
# As Filip showed in the video, fromJSON() also works if you pass a URL as a character string or the path to a local file that contains JSON data. Let's try this out on the Quandl API, where you can fetch all sorts of financial and economical data.
# 
# Instructions
# 100 XP
# quandl_url represents a URL. Use fromJSON() directly on this URL and store the result in quandl_data.
# Display the structure of quandl_data.

# jsonlite is preloaded
# Definition of quandl_url
quandl_url <- "https://www.quandl.com/api/v3/datasets/WIKI/FB/data.json?auth_token=i83asDsiWUUyfoypkgMz"
# Import Quandl data: quandl_data
quandl_data <- fromJSON(quandl_url)
# Print structure of quandl_data
str(quandl_data)