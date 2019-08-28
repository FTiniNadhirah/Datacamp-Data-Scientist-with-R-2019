# Arguments
# Lily and Tom are having an argument because they want to share a hot dog but they can't seem to agree on which one to choose. After some time, they simply decide that they will have one each. Lily wants to have the one with the fewest calories while Tom wants to have the one with the most sodium.
# 
# Next to calories and sodium, the hotdogs have one more variable: type. This can be one of three things: Beef, Meat, or Poultry, so a categorical variable: a factor is fine.
# 
# Instructions
# 100 XP
# Instructions
# 100 XP
# Finish the read.delim() call to import the data in "hotdogs.txt". It's a tab-delimited file without names in the first row.
# The code that selects the observation with the lowest calorie count and stores it in the variable lily is already available. It uses the function which.min(), that returns the index the smallest value in a vector.
# Do a similar thing for Tom: select the observation with the most sodium and store it in tom. Use which.max() this time.
# # Finally, print both the observations lily and tom
# Finish the read.delim() call
hotdogs <- read.delim("hotdogs.txt", header = FALSE, col.names = c("type", "calories", "sodium"))

# Select the hot dog with the least calories: lily
lily <- hotdogs[which.min(hotdogs$calories), ]

# Select the observation with the most sodium: tom
tom <- hotdogs[which.max(hotdogs$sodium), ]

# Print lily and tom
lily
tom

