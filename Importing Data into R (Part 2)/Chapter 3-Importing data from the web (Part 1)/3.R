# Import Excel files from the web
# When you learned about gdata, it was already mentioned that gdata can handle .xls files that are on the internet. readxl can't, at least not yet. The URL with which you'll be working is already available in the sample code. You will import it once using gdata and once with the readxl package via a workaround.
# 
# Instructions
# 100 XP
# Instructions
# 100 XP
# Load the readxl and gdata packages. They are already installed on DataCamp's servers.
# Import the .xls file located at the URL url_xls using read.xls() from gdata. Store the resulting data frame as excel_gdata.
# You can not use read_excel() directly with a URL. Complete the following instructions to work around this problem:
# Use download.file() to download the .xls file behind the URL and store it locally as "local_latitude.xls".
# Call read_excel() to import the local file, "local_latitude.xls". Name the resulting data frame excel_readxl.

# Load the readxl and gdata package
library(readxl)
library(gdata)
# Specification of url: url_xls
url_xls <- "http://s3.amazonaws.com/assets.datacamp.com/production/course_1478/datasets/latitude.xls"
# Import the .xls file with gdata: excel_gdata
excel_gdata <- read.xls(url_xls)
# Download file behind URL, name it local_latitude.xls
download.file(url_xls,"local_latitude.xls")
# Import the local .xls file with readxl: excel_readxl
excel_readxl <- read_excel("local_latitude.xls")