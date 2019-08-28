# Downloading any file, secure or not
# In the previous exercise you've seen how you can read excel files on the web using the read_excel package by first downloading the file with the download.file() function.
# 
# There's more: with download.file() you can download any kind of file from the web, using HTTP and HTTPS: images, executable files, but also .RData files. An RData file is very efficient format to store R data.
# 
# You can load data from an RData file using the load() function, but this function does not accept a URL string as an argument. In this exercise, you'll first download the RData file securely, and then import the local data file.
# 
# Instructions
# 100 XP
# Take a look at the URL in url_rdata. It uses a secure connection, https://. This URL points to an RData file containing a data frame with some metrics on different kinds of wine.
# Download the file at url_rdata using download.file(). Call the file "wine_local.RData" in your working directory.
# Load the file you created, wine_local.RData, using the load() function. It takes one argument, the path to the file, which is just the filename in our case. After running this command, the variable wine will automatically be available in your workspace.
# Print out the summary() of the wine dataset.

# https URL to the wine RData file.
url_rdata <- "https://s3.amazonaws.com/assets.datacamp.com/production/course_1478/datasets/wine.RData"
# Download the wine file to your working directory
download.file(url_rdata,"wine_local.RData")
# Load the wine data into your workspace using load()
load("wine_local.RData")
# Print out the summary of the wine data
summary(wine)
