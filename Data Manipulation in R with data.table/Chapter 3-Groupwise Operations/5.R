# What are the top 5 destinations?
#   When analyzing data, it is often useful to know the key top/popular stats such as the most popular cities or the most famous restaurants etc. In this exercise, you will find the five most popular destinations (i.e., the five most popular end_stations).
# 
# Instructions
# 0 XP
# Chain the following three data.table expressions:
#   Find the total number of trips to each end_station.
# Arrange the total number of trips for each end_station in descending order.
# Filter the top 5 rows.

# Top five most popular destinations
top_5 <- batrips[, .N, by = end_station][order(-N)][1:5]
top_5