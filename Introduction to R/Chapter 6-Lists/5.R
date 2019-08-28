# Adding more movie information to the list
# Being proud of your first list, you shared it with the members of your movie hobby club. However, one of the senior members, a guy named M. McDowell, noted that you forgot to add the release year. Given your ambitions to become next year's president of the club, you decide to add this information to the list.
# 
# To conveniently add elements to lists you can use the c() function, that you also used to build vectors:
# 
# ext_list <- c(my_list , my_val)
# This will simply extend the original list, my_list, with the component my_val. This component gets appended to the end of the list. If you want to give the new list item a name, you just add the name as you did before:
# 
# ext_list <- c(my_list, my_name = my_val)
# Instructions
# 100 XP
# Instructions
# 100 XP
# Complete the code below such that an item named year is added to the shining_list with the value 1980. Assign the result to shining_list_full.
# Finally, have a look at the structure of shining_list_full with the str() function.

# shining_list, the list containing movie name, actors and reviews, is pre-loaded in the workspace

# Use c() to add a year to shining_list
shining_list_full <- c(shining_list, year = 1980)

# Have a look at shining_list_full
str(shining_list_full)