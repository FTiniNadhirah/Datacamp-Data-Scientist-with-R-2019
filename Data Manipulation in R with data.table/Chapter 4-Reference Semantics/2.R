# Updating an existing column (I)
# Being able to efficiently update existing columns is particularly useful when cleaning data. In this exercise, you will work with a new data.table, untidy, which is almost identical to batrips, except we introduced a typo in the second row of the start_station column.
# 
# Instructions 1/2
# 50 XP
# 1
# 2
# Print the first two rows of untidy to see if you can spot the typo.
# Print untidy
head(untidy, 2)
# 
# Now update the second row of the start_station column to fix the typo. The correct spelling should be "San Francisco City Hall".

# Fix spelling in the second row of start_station
untidy[2, start_station := "San Francisco City Hall"]