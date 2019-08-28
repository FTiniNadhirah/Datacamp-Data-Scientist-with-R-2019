# Multiple time series, part 1
# In the data chapter we discussed how the form of your data affects how you can plot it. Here, you'll explore that topic in the context of multiple time series.
# 
# The dataset you'll use contains the global capture rates of seven salmon species from 1950 - 2010.
# 
# In your workspace, the following dataset is available:
#   
#   fish.species: Each variable (column) is a Salmon Species and each observation (row) is one Year.
# To get a multiple time series plot, however, both Year and Species should be in their own column. You need tidy data: one variable per column. Once you have that you can get the plot shown in the viewer by mapping Year to the x aesthetic and Species to the color aesthetic.
# 
# You'll use the gather() function of the tidyr package, which is already loaded for you.
# 
# Instructions
# 100 XP
# Instructions
# 100 XP
# Use gather() to move from fish.species to a tidy data frame, fish.tidy. This data frame should have three columns: Year (int), Species (factor) and Capture (int).
# gather() takes four arguments: the original data frame (fish.species), the name of the key column (Species), the name of the value column (Capture) and the name of the grouping variable, with a minus in front (-Year). They can all be specified as object names (i.e. no "").

# Check the structure as a starting point
str(fish.species)

# Use gather to go from fish.species to fish.tidy
fish.tidy <- gather(fish.species, Species, Capture, -Year)

str(fish.tidy)