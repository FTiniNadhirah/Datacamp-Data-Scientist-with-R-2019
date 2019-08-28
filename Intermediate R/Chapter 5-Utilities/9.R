# Right here, right now
# In R, dates are represented by Date objects, while times are represented by POSIXct objects. Under the hood, however, these dates and times are simple numerical values. Date objects store the number of days since the 1st of January in 1970. POSIXct objects on the other hand, store the number of seconds since the 1st of January in 1970.
# 
# The 1st of January in 1970 is the common origin for representing times and dates in a wide range of programming languages. There is no particular reason for this; it is a simple convention. Of course, it's also possible to create dates and times before 1970; the corresponding numerical values are simply negative in this case.
# 
# Instructions
# 100 XP
# Instructions
# 100 XP
# Ask R for the current date, and store the result in a variable today.
# To see what today looks like under the hood, call unclass() on it.
# Ask R for the current time, and store the result in a variable, now.
# To see the numerical value that corresponds to now, call 

# Get the current date: today
today <- Sys.Date()
today

# See what today looks like under the hood
unclass(today)

# Get the current time: now
now <- Sys.time()
now

# See what now looks like under the hood
unclass(now)