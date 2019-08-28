# Import flat files from the web
# In the video, you saw that the utils functions to import flat file data, such as read.csv() and read.delim(), are capable of automatically importing from URLs that point to flat files on the web.
# 
# You must be wondering whether Hadley Wickham's alternative package, readr, is equally potent. Well, figure it out in this exercise! The URLs for both a .csv file as well as a .delim file are already coded for you. It's up to you to actually import the data. If it works, that is...
# 
# Instructions
# 100 XP
# Instructions
# 100 XP
# Load the readr package. It's already installed on DataCamp's servers.
# Use url_csv to read in the .csv file it is pointing to. Use the read_csv() function. The .csv contains column names in the first row. Save the resulting data frame as pools.
# Similarly, use url_delim to read in the online .txt file. Use the read_tsv() function and store the result as potatoes.
# Print pools and potatoes. Looks correct?

# Load the readr package
library(readr)
# Import the csv file: pools
url_csv <- "http://s3.amazonaws.com/assets.datacamp.com/production/course_1478/datasets/swimming_pools.csv"
pools <- read_csv(url_csv,col_names = TRUE)
# Import the txt file: potatoes
url_delim <- "http://s3.amazonaws.com/assets.datacamp.com/production/course_1478/datasets/potatoes.txt"
potatoes <- read_tsv(url_delim)
# Print pools and potatoes
pools
potatoes