# Multi-column keys
# Two new datasets are available in your R session:
#   
#   subjects: contains the subject each student is taking each semester this year
# locations: contains the room allocations for each subject
# Your goal is to build a new data.table with the locations of each subject for each student.
# 
# Instructions 1/3
# 35 XP
# 1
# 2
# 3
# Right join locations to subjects using the "subject" and "semester" columns in both data.tables as two separate join key columns. You should get an error.
# 
# Right join
subjects[locations, on = .(subject, semester)] 
# 
# Instructions 2/3
# 1 XP
# Print the str()ucture of subjects and locations.
# Is the class of the semester column same in both? If yes, assign TRUE to same_class, else assign FALSE.
# 
# Structure 
str(subjects)
str(locations)

# Does semester have the same class? 
same_class <- FALSE

# Instructions 3/3
# 0 XP
# Use the as.integer() function to change the class of the "semester" column in locations.
# Right join locations to subjects again, using the data.table syntax.

# Fix the column class
locations[, semester := as.integer(semester)]

# Right join
subjects[locations, on = .(subject, semester)]
