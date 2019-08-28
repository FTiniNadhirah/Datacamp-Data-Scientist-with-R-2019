# Exercise
# Exercise
# Keys with different names
# You have been contracted by a local school to perform some analysis using their internal databases. Two of those datasets are available in your R session:
#   
#   students: contains information about the students attending the school
# guardians: contains information about the adult who is the primary point of contact for the school for each student.
# Your goal is to build a new data.table containing all the information about the guardian for each student.
# 
# Instructions 1/4
# 1 XP
# Use the merge() function to full join guardians to students using the "name" column as the join key. Do the results look correct?
# Full join
merge(students, guardians, by = "name", all = TRUE)

#   Instructions 2/4
# 1 XP
# Now see what happens when you left join guardians to students with the merge() function using "name" as the join key.
# Left join
merge(students, guardians, by = "name", all.x = TRUE)
# Instructions 3/4
# 1 XP
# Perform an inner join using the data.table syntax.
# Inner join
students[guardians, on = .(name), nomatch = 0]
# Instructions 4/4
# 1 XP
# Explore the data.tables in your console to find the column in each of students and guardians that matches rows between them, then modify the code to use these column names to perform an inner join.
# What are the correct join key columns?
students[guardians, on = .(guardian = name), nomatch = 0]