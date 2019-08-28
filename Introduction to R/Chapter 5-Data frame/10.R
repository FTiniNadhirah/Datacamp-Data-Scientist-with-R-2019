# Only planets with rings but shorter
# So what exactly did you learn in the previous exercises? You selected a subset from a data frame (planets_df) based on whether or not a certain condition was true (rings or no rings), and you managed to pull out all relevant data. Pretty awesome! By now, NASA is probably already flirting with your CV ;-).
# 
# Now, let us move up one level and use the function subset(). You should see the subset() function as a short-cut to do exactly the same as what you did in the previous exercises.
# 
# subset(my_df, subset = some_condition)
# The first argument of subset() specifies the data set for which you want a subset. By adding the second argument, you give R the necessary information and conditions to select the correct subset.
# 
# The code below will give the exact same result as you got in the previous exercise, but this time, you didn't need the rings_vector!
# 
# subset(planets_df, subset = rings)
# Instructions
# 100 XP
# Instructions
# 100 XP
# Use subset() on planets_df to select planets that have a diameter smaller than Earth. Because the diameter variable is a relative measure of the planet's diameter w.r.t that of planet Earth, your condition is diameter < 1.

# planets_df is pre-loaded in your workspace

# Select planets with diameter < 1
subset(planets_df, subset = diameter<1)