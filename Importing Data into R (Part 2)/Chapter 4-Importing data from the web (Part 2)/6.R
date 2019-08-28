# toJSON()
# Apart from converting JSON to R with fromJSON(), you can also use toJSON() to convert R data to a JSON format. In its most basic use, you simply pass this function an R object to convert to a JSON. The result is an R object of the class json, which is basically a character string representing that JSON.
# 
# For this exercise, you will be working with a .csv file containing information on the amount of desalinated water that is produced around the world. As you'll see, it contains a lot of missing values. This data can be found on the URL that is specified in the sample code.
# 
# Instructions
# 100 XP
# Instructions
# 100 XP
# Use a function of the utils package to import the .csv file directly from the URL specified in url_csv. Save the resulting data frame as water. Make sure that strings are not imported as factors.
# Convert the data frame water to a JSON. Call the resulting object water_json.
# Print out water_json.

# jsonlite is already loaded

# URL pointing to the .csv file
url_csv <- "http://s3.amazonaws.com/assets.datacamp.com/production/course_1478/datasets/water.csv"

# Import the .csv file located at url_csv
water <- read.csv(url_csv, header = TRUE, sep = ",", stringsAsFactors=FALSE)
# Convert the data file according to the requirements
water_json <- toJSON(water)
# Print out water_json
water_json