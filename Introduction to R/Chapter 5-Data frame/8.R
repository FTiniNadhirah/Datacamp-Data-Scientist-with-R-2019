# Only planets with rings
# You will often want to select an entire column, namely one specific variable from a data frame. If you want to select all elements of the variable diameter, for example, both of these will do the trick:
#   
#   planets_df[,3]
# planets_df[,"diameter"]
# However, there is a short-cut. If your columns have names, you can use the $ sign:
#   
#   planets_df$diameter
# Instructions
# 100 XP
# Use the $ sign to select the rings variable from planets_df. Store the vector that results as rings_vector.
# Print out rings_vector to see if you got it right.

# planets_df is pre-loaded in your workspace

# Select the rings variable from planets_df
rings_vector <- planets_df$rings

# Print out rings_vector
rings_vector