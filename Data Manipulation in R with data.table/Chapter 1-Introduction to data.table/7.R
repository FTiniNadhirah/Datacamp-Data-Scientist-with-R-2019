# Filtering with %in%
#   %in% allows selecting rows that exactly matches one or more values, for example:
#   
#   c("a", "b", "c", "d") %in% c("d", "a")
# [1]  TRUE FALSE FALSE  TRUE
# Instructions
# 0 XP
# Filter all rows where trip_id is equal to 588841, 139560, or 139562.
# 


# Filter all rows where trip_id is 588841, 139560, or 139562
filter_trip_ids <- batrips[trip_id %in% c(588841, 139560, 139562)]
filter_trip_ids