# Import STATA data with foreign (2)
# Data can be very diverse, going from character vectors to categorical variables, dates and more. It's in these cases that the additional arguments of read.dta() will come in handy.
# 
# The arguments you will use most often are convert.dates, convert.factors, missing.type and convert.underscore. Their meaning is pretty straightforward, as Filip explained in the video. It's all about correctly converting STATA data to standard R data structures. Type ?read.dta to find out about about the default values.
# 
# The dataset for this exercise contains socio-economic measures and access to education for different individuals (Source: World Bank). This data is available as edequality.dta, which is located in the worldbank folder in your working directory.
# 
# Instructions
# 100 XP
# Instructions
# 100 XP
# Specify the path to the file using file.path(). Call it path. Remember the "edequality.dta" file is located in the "worldbank" folder.
# Use the path variable to import the data file in three different ways; each time show its structure with str():
#   edu_equal_1: By passing only the file path to read.dta().
# edu_equal_2: By passing the file path, and setting convert.factors to FALSE.
# edu_equal_3: By passing the file path, and setting convert.underscore to TRUE.

# foreign is already loaded
# Specify the file path using file.path(): path
path <- file.path("worldbank","edequality.dta")
# Create and print structure of edu_equal_1
edu_equal_1 <- read.dta(path)
str(edu_equal_1)
# Create and print structure of edu_equal_2
edu_equal_2 <- read.dta(path,convert.factors= FALSE)
str(edu_equal_2)
# Create and print structure of edu_equal_3
edu_equal_3 <- read.dta(path,convert.underscore= TRUE)
str(edu_equal_3)