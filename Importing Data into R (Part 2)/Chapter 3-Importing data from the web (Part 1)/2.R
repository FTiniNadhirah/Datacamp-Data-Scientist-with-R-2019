# Secure importing
# In the previous exercises, you have been working with URLs that all start with http://. There is, however, a safer alternative to HTTP, namely HTTPS, which stands for HypterText Transfer Protocol Secure. Just remember this: HTTPS is relatively safe, HTTP is not.
# 
# Luckily for us, you can use the standard importing functions with https:// connections since R version 3.2.2.
# 
# Instructions
# 100 XP
# Instructions
# 100 XP
# Take a look at the URL in url_csv. It uses a secure connection, https://.
# Use read.csv() to import the file at url_csv. The .csv file it is referring to contains column names in the first row. Call it pools1.
# Load the readr package. It's already installed on DataCamp's servers.
# Use read_csv() to read in the same .csv file in url_csv. Call it pools2.
# Print out the structure of pools1 and pools2. Looks like the importing went equally well as with a normal http connection!

# https URL to the swimming_pools csv file.
url_csv <- "https://s3.amazonaws.com/assets.datacamp.com/production/course_1478/datasets/swimming_pools.csv"
# Import the file using read.csv(): pools1
pools1 <- read.csv(url_csv,header=TRUE)
# Load the readr package
library(readr)
# Import the file using read_csv(): pools2
pools2 <- read_csv(url_csv)
# Print the structure of pools1 and pools2
str(pools1)
str(pools2)