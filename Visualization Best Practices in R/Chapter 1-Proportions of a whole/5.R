# How about a waffle?
#   What if we are interested in the details of the 'other' class?
#   
#   Let's make the switch to a waffle chart, as they are capable of dealing with more classes. We'll use the same data-manipulation pipeline from the last exercise, but this time with all the diseases left in.
# 
# We will use the library waffle which contains the function waffle(). This function produces a waffle chart for you when supplied with a named vector of counts.
# 
# It will draw one square for each unit supplied in the vector, so we need to manipulate our disease counts to rounded percents (note the mutate() call in the supplied data wrangling code).
# 
# Instructions
# 100 XP
# Give the case_counts vector names using the names() function.
# Call the waffle() function in the library waffle with the case_counts vector supplied as an argument.

disease_counts <- who_disease %>%
  group_by(disease) %>%
  summarise(total_cases = sum(cases)) %>% 
  mutate(percent = round(total_cases/sum(total_cases)*100))

# Create an array of rounded percentages for diseases.
case_counts <- disease_counts$percent
# Name the percentage array
names(case_counts) <- disease_counts$disease

# Pass case_counts vector to the waffle function to plot
waffle(case_counts)