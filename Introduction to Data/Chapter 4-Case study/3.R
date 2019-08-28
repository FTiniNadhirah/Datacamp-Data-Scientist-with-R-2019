# Recode a variable
# The cls_students variable in evals tells you the number of students in the class. Suppose instead of the exact number of students, you're interested in whether the class is
# 
# "small" (18 students or fewer),
# "midsize" (19 - 59 students), or
# "large" (60 students or more).
# Instructions
# 100 XP
# Recode the cls_students variable into a new variable, cls_type, using case_when(). This new variable should have three levels as described above. Save the resulting data frame (with the new variable) as evals.
# What type of variable is cls_type?

# Recode cls_students as cls_type
evals_fortified <- evals %>%
  mutate(
    cls_type = case_when(
      cls_students <= 18                      ~ "small",
      cls_students >= 19 & cls_students <= 59 ~ "midsize",
      cls_students >= 60                      ~ "large"
    )
  )