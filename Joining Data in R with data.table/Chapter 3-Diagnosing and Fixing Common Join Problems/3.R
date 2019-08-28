# Multi-key, single-key
# In addition to locations, you will work with the teachers dataset in this exercise. It contains information about the teacher for each subject. The teacher of each subject does not change between semesters. Your goal is to build a new data.table containing the room allocation for each subject, using the teachers and locations data.tables.
# 
# Instructions
# 100 XP
# Identify the key column(s) for joining teachers and locations and assign it as a character vector in the form c("teachers_join_key" = "locations_join_key") to the join_key variable.
# Using the data.table syntax, right join locations to teachers using the join_key variable.

# Identify and set the keys
join_key <- c("topic" = "subject")

# Right join
teachers[locations, on = join_key]