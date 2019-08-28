# Calculations with Dates
# Both Date and POSIXct R objects are represented by simple numerical values under the hood. This makes calculation with time and date objects very straightforward: R performs the calculations using the underlying numerical values, and then converts the result back to human-readable time information again.
# 
# You can increment and decrement Date objects, or do actual calculations with them (try it out in the console!):
#   
#   today <- Sys.Date()
# today + 1
# today - 1
# 
# as.Date("2015-03-12") - as.Date("2015-02-27")
# To control your eating habits, you decided to write down the dates of the last five days that you ate pizza. In the workspace, these dates are defined as five Date objects, day1 to day5. The code on the right also contains a vector pizza with these 5 Date objects.
# 
# Instructions
# 100 XP
# Calculate the number of days that passed between the last and the first day you ate pizza. Print the result.
# Use the function diff() on pizza to calculate the differences between consecutive pizza days. Store the result in a new variable day_diff.
# Calculate the average period between two consecutive pizza days. Print the result.

# day1, day2, day3, day4 and day5 are already available in the workspace

# Difference between last and first pizza day
as.Date(day5) - as.Date(day1)
## Time difference of 18 days
# Create vector pizza
pizza <- c(day1, day2, day3, day4, day5)

# Create differences between consecutive pizza days: day_diff
day_diff <- diff(pizza)

# Average period between two consecutive pizza days
mean(day_diff)