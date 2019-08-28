# Proportion of males admitted for each department
# Finally we'll make a table similar to the one we constructed earlier, except we'll first group the data by department. The goal is to compare the proportions of male admitted students across departments.
# 
# Proportions for each row of the data frame we create can be calculated as n / sum(n). Note that since the data are grouped by department and gender, sum(n) will be calculated for males and females separately for each department.
# 
# Instructions 1/2
# 50 XP
# 1
# 2
# Instructions 1/2
# 50 XP
# 1
# 2
# ucb_admit has been pre-loaded for you.
# 
# Assign ucb_admission_counts as the count() of ucb_admit by department, gender, and admission status.

ucb_admission_counts <- ucb_admit %>%
  # Counts by department, then gender, then admission status
  count(Dept, Gender, Admit)

# See the result
ucb_admission_counts

ucb_admission_counts  %>%
  # Group by department, then gender
  group_by(Dept, Gender) %>%
  # Create new variable
  mutate(prop = n / sum(n)) %>%
  # Filter for male and admitted
  filter(Gender == "Male", Admit == "Admitted")