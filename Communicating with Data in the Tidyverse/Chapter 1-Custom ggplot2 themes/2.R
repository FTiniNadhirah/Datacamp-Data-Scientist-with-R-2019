# Change variable types
# For displaying data in ggplot2 graphics, it is often helpful to convert all the variables to the right data type. Usually, categorical variables like country in this example should be converted to factors before plotting them. You can do so using as.factor(). In your data set, two columns are still of type "character" - use mutate() to turn them into factors.
# 
# Instructions
# 0 XP
# Turn the variable year into a factor. Before turning it into a factor, turn it into a number using as.numeric(): call the as.numeric() function within the as.factor() function call.
# Turn the variable country into a factor.
# Turn year and country into a factor
ilo_data_corrected <- ilo_data %>%
  mutate(year = as.factor(as.numeric(year)),
         country = as.factor(country))