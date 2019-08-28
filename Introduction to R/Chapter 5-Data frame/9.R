# Only planets with rings (2)
# You probably remember from high school that some planets in our solar system have rings and others do not. Unfortunately you can not recall their names. Could R help you out?
#   
#   If you type rings_vector in the console, you get:
#   
#   [1] FALSE FALSE FALSE FALSE  TRUE  TRUE  TRUE  TRUE
# This means that the first four observations (or planets) do not have a ring (FALSE), but the other four do (TRUE). However, you do not get a nice overview of the names of these planets, their diameter, etc. Let's try to use rings_vector to select the data for the four planets with rings.
# 
# Instructions
# 100 XP
# Instructions
# 100 XP
# The code on the right selects the name column of all planets that have rings. Adapt the code so that instead of only the name column, all columns for planets that have rings are selected.

# planets_df and rings_vector are pre-loaded in your workspace

# Adapt the code to select all columns for planets with rings
planets_df[rings_vector, "name"]

rings.vector <- planets_df$rings
planets.with.rings.df <- planets_df[rings.vector,]
# Show me the
planets.with.rings.df