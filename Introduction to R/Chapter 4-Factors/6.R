# Battle of the sexes
# You might wonder what happens when you try to compare elements of a factor. In factor_survey_vector you have a factor with two levels: "Male" and "Female". But how does R value these relative to each other?
#   
#   Instructions
# 100 XP
# Read the code in the editor and click 'Submit Answer' to test if male is greater than (>) female.
# 
# Build factor_survey_vector with clean levels
survey_vector <- c("M", "F", "F", "M", "M")
factor_survey_vector <- factor(survey_vector)
levels(factor_survey_vector) <- c("Female", "Male")

# Male
male <- factor_survey_vector[1]

# Female
female <- factor_survey_vector[2]

# Battle of the sexes: Male 'larger' than female?
male > female