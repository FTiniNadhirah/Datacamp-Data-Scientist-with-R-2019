# Fast reading from disk
# In addition to having intelligent defaults, fread() is super fast! In this exercise, you will use the system.time() function from base R to compare the time it takes to read the batrips.csv file using read.csv() and fread(). All you need to do is pass an expression to system.time(). For example, if you want to calculate how long it takes to import a file called sample.csv, you can use:
#   
#   system.time(read.csv("sample.csv"))
# user  system elapsed 
# 3.495   0.040   3.547
# Generally, you want to consider user time when measuring execution time. So in this case, it took 3.495 seconds to import the file sample.csv.
# 
# Instructions 1/2
# 50 XP
# 1
# 2
# Import batrips using base R's read.csv().
# Wrap the call inside system.time() to see how long this operation takes.

# Use read.csv() to import batrips
system.time(read.csv("batrips.csv"))

# Import batrips using data.table's fread().
# Wrap the call inside system.time() to see how long this operation takes.
# Use fread() to import batrips
system.time(fread("batrips.csv"))
