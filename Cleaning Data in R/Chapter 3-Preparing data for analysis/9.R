# Dealing with outliers and obvious errors
# When dealing with strange values in your data, you often must decide whether they are just extreme or actually erroneous. Extreme values show up all over the place, but you, the data analyst, must figure out when they are plausible and when they are not.
# 
# We have loaded a dataset called students3, which is another slight variation of the original students dataset. Two variables appear to have suspicious values: age and absences. Let's explore these values further.
# 
# Instructions
# 100 XP
# Instructions
# 100 XP
# Call summary() on the full students3 dataset to expose the concerning values of age and absences.
# View a histogram (using hist()) of the age variable.
# View a histogram of the absences variable.
# View another histogram of absences, but force values of zero to be bucketed to the right of zero on the x-axis with right = FALSE (see ?hist for more info).

# Look at a summary() of students3

summary(students3)
# View a histogram of the age variable
hist(students3$age)

# View a histogram of the absences variable

hist(students3$absences)

# View a histogram of absences, but force zeros to be bucketed to the right of zero
hist(students3$absences, right=F)