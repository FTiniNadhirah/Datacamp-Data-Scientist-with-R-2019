# Proportion of males admitted overall
# Next we'll calculate the percentage of males and percentage of females admitted, by creating a new variable, called prop (short for proportion) based off of the counts calculated in the previous exercise and using the mutate() from the dplyr package.
# 
# Proportions for each row of the data frame we created in the previous exercise can be calculated as n / sum(n). Note that since the data are grouped by gender, sum(n) will be calculated for males and females separately.
# 
# Instructions
# 100 XP
# The table of counts of gender and admission status you developed earlier is available as ucb_admission_counts.
# 
# Group the data by gender.
# Create the new variable described above, prop, the proportion of males and females admitted.
# Filter the data for those who are admitted so that the resulting data frame only contains proportions of males and females who are admitted.
# Which gender has a higher admission rate, male or female?
ucb_admission_counts %>%
  # Group by gender
  group_by(Gender) %>%
  # Create new variable
  mutate(prop = n / sum(n)) %>%
  # Filter for admitted
  filter(Admit == "Admitted")