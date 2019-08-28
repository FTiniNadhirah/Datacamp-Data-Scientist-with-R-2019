# fread: more advanced use
# Now that you know the basics about fread(), you should know about two arguments of the function: drop and select, to drop or select variables of interest.
# 
# Suppose you have a dataset that contains 5 variables and you want to keep the first and fifth variable, named "a" and "e". The following options will all do the trick:
#   
#   fread("path/to/file.txt", drop = 2:4)
# fread("path/to/file.txt", select = c(1, 5))
# fread("path/to/file.txt", drop = c("b", "c", "d"))
# fread("path/to/file.txt", select = c("a", "e"))
# Let's stick with potatoes since we're particularly fond of them here at DataCamp. The data is again available in the file potatoes.csv, containing comma-separated records.
# 
# Instructions
# 100 XP
# Using fread() and select or drop as arguments, only import the texture and moistness columns of the flat file. They correspond to the columns 6 and 8 in "potatoes.csv". Store the result in a variable potatoes.
# plot() 2 columns of the potatoes data frame: texture on the x-axis, moistness on the y-axis. Use the dollar sign notation twice. Feel free to name your axes and plot.


# Import columns 6 and 8 of potatoes.csv: potatoes
potatoes<-fread("potatoes.csv",select=c(6,8))
# Plot texture (x) and moistness (y) of potatoes
plot(potatoes$texture,potatoes$moistness)
