# Ordering one variable by another
# Often we'll need to modify our dataset before we can plot it. If we do this with dplyr functions and the %>%, you can continue by %>% your dataset into ggplot(). It works just like all the functions you use the %>% for because data is the first argument ggplot() takes, and then you can write the rest of the arguments (like aes()) inside the ggplot() call. Just don't forget you have to switch back to + when you add on the rest of the ggplot() code!
#   
#   Let's try it out by first modifying multiple_choice_responses and then plotting the results in a scatterplot. We'll also need a forcats function to put our graph in a better order.
# 
# 
# 
# Filter for rows where Age and EmployerIndustry are both not NA.
# 
multiple_choice_responses %>%
  # remove NAs
  filter(!is.na(EmployerIndustry) & !is.na(Age)) 
# 
# Group the dataset by EmployerIndustry.
# Create a new variable mean_age, that is the mean age for each industry.

multiple_choice_responses %>%
  # remove NAs
  filter(!is.na(EmployerIndustry) & !is.na(Age)) %>%
  # get mean_age by EmployerIndustry
  group_by(EmployerIndustry) %>%
  summarise(mean_age = mean(Age)) 

# Reorder EmployerIndustry by mean age.
# Using geom_point, make a scatter plot of the mean age by industry.

multiple_choice_responses %>%
  # remove NAs
  filter(!is.na(EmployerIndustry) & !is.na(Age)) %>%
  # get mean_age by EmployerIndustry
  group_by(EmployerIndustry) %>%
  summarise(mean_age = mean(Age)) %>%
  # reorder EmployerIndustry by mean_age 
  mutate(EmployerIndustry = fct_reorder(EmployerIndustry, mean_age)) %>%
  # make a scatterplot of EmployerIndustry by mean_age
  ggplot(aes(x = EmployerIndustry, y = mean_age)) + 
  geom_point() + 
  coord_flip()