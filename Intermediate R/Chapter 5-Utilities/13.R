# Calculations with Times
# Calculations using POSIXct objects are completely analogous to those using Date objects. Try to experiment with this code to increase or decrease POSIXct objects:
#   
#   now <- Sys.time()
# now + 3600          # add an hour
# now - 3600 * 24     # subtract a day
# Adding or substracting time objects is also straightforward:
#   
#   birth <- as.POSIXct("1879-03-14 14:37:23")
# death <- as.POSIXct("1955-04-18 03:47:12")
# einstein <- death - birth
# einstein
# You're developing a website that requires users to log in and out. You want to know what is the total and average amount of time a particular user spends on your website. This user has logged in 5 times and logged out 5 times as well. These times are gathered in the vectors login and logout, which are already defined in the workspace.
# 
# Instructions
# 100 XP
# Instructions
# 100 XP
# Calculate the difference between the two vectors logout and login, i.e. the time the user was online in each independent session. Store the result in a variable time_online.
# Inspect the variable time_online by printing it.
# Calculate the total time that the user was online. Print the result.
# Calculate the average time the user was online. Print the result.

# login and logout are already defined in the workspace
# Calculate the difference between login and logout: time_online
time_online = logout - login

# Inspect the variable time_online
time_online
## Time differences in secs
## [1] 2305   34  837 2398 1852
# Calculate the total time online
sum(time_online)
## Time difference of 7426 secs
# Calculate the average time online
mean(time_online)