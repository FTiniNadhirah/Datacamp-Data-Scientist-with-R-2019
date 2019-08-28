# Here's what messy data look like
# In the final chapter of this course, you will be presented with a messy, real-world dataset containing an entire year's worth of weather data from Boston, USA. Among other things, you'll be presented with variables that contain column names, column names that should be values, numbers coded as character strings, and values that are missing, extreme, and downright erroneous!
# 
# Instructions
# 100 XP
# We've placed some R code in the script to the right. Run the code as-is to see just how messy the weather data really are!
#   

# View the first 6 rows of data
head(weather)

# View the last 6 rows of data
tail(weather)

# View a condensed summary of the data
str(weather)