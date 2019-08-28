# Identify type of study: Countries
# Next, let's take a look at data from a different study on country characteristics. First, load the data and view it, then identify the type of study. Remember, an experiment requires random assignment.
# 
# Instructions
# 100 XP
# Load the gapminder data. This dataset comes from the gapminder R package, which has already been loaded.
# View the variables in the dataset with glimpse().
# If these data come from an observational study, assign "observational" to the type_of_study variable. If experimental, assign "experimental".

# Load data
data(gapminder)

# Glimpse data
glimpse(gapminder)

# Identify type of study: observational or experimental
type_of_study <- "observational"