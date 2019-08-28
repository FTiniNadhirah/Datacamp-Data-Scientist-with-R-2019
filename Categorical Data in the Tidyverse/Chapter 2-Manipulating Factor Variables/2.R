# Tricks of fct_relevel()
# In the previous exercise, the name of each level had to be written out to explicitly reorder the factor. But sometimes you have many levels and only need to move one. Instead of writing out all the levels, you can use some helper arguments in fct_relevel() to save you some typing. Let's try some of them out on the variable FormalEducation in multiple_choice_responses; view the levels of the multiple_choice_responses$FormalEducation in the console to get started.
# 
# Instructions
# 100 XP
# Instructions
# 100 XP
# In three mutate calls, change FormalEducation in the following ways:
# Move "I did not complete any formal education past high school" and "Some college/university study without earning a bachelor's degree" to the front.
# Move "I prefer not to answer" to be the last level.
# Move "Doctoral degree" to be the sixth level (after the fifth level).

multiple_choice_responses %>%
  # Move "I did not complete any formal education past high school" and "Some college/university study without earning a bachelor's degree" to the front
  mutate(FormalEducation = fct_relevel(FormalEducation, 
                                       "I did not complete any formal education past high school", 
                                       "Some college/university study without earning a bachelor's degree")) %>%
  # Move "I prefer not to answer" to be the last level.
  mutate(FormalEducation = fct_relevel(FormalEducation, "I prefer not to answer", after = Inf)) %>%
  # Move "Doctoral degree" to be after the 5th level
  mutate(FormalEducation = fct_relevel(FormalEducation, "Doctoral degree", after = 5)) %>%
  # Examine the new level order
  pull(FormalEducation) %>%
  levels()
