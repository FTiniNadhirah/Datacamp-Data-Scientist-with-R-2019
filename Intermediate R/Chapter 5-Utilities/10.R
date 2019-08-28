# Create and format dates
# To create a Date object from a simple character string in R, you can use the as.Date() function. The character string has to obey a format that can be defined using a set of symbols (the examples correspond to 13 January, 1982):
#   
#   %Y: 4-digit year (1982)
# %y: 2-digit year (82)
# %m: 2-digit month (01)
# %d: 2-digit day of the month (13)
# %A: weekday (Wednesday)
# %a: abbreviated weekday (Wed)
# %B: month (January)
# %b: abbreviated month (Jan)
# The following R commands will all create the same Date object for the 13th day in January of 1982:
#   
#   as.Date("1982-01-13")
# as.Date("Jan-13-82", format = "%b-%d-%y")
# as.Date("13 January, 1982", format = "%d %B, %Y")
# Notice that the first line here did not need a format argument, because by default R matches your character string to the formats "%Y-%m-%d" or "%Y/%m/%d".
# 
# In addition to creating dates, you can also convert dates to character strings that use a different date notation. For this, you use the format() function. Try the following lines of code:
#   
#   today <- Sys.Date()
# format(Sys.Date(), format = "%d %B, %Y")
# format(Sys.Date(), format = "Today is a %A!")
# Instructions
# 100 XP
# In the editor on the right, three character strings representing dates have been created. Convert them to dates using as.Date(), and assign them to date1, date2, and date3 respectively. The code for date1 is already included.
# Extract useful information from the dates as character strings using format(). From the first date, select the weekday. From the second date, select the day of the month. From the third date, you should select the abbreviated month and the 4-digit year, separated by a space.

# Definition of character strings representing dates
str1 <- "May 23, '96"
str2 <- "2012-03-15"
str3 <- "30/January/2006"

# Definition of character strings representing dates
str1 <- "May 23, '96"
str2 <- "2012-03-15"
str3 <- "30/January/2006"

# Convert the strings to dates: date1, date2, date3
date1 <- as.Date(str1, format = "%b %d, '%y")
date2 <- as.Date(str2, format = "%Y-%m-%d")
date3 <- as.Date(str3, format = "%d/%B/%Y")

# Convert dates to formatted strings
format(date1, "%A")

format(date2, "%d")

format(date3, "%b %Y")