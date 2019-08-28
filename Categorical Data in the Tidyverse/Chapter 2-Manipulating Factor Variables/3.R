# Renaming a few levels
# Let's take the FormalEducation variable from the last exercise. Two of the responses were really long; let's shorten them up to make our graphs look better! The dataset multiple_choice_responses has been loaded for you.
# 
# Instructions 1/2
# 50 XP
# 1
# 2
# Make a bar plot of the frequency of different education levels.
# 
# make a bar plot of the frequency of FormalEducation
ggplot(multiple_choice_responses, aes(x = FormalEducation)) + 
  geom_bar() 
# 
# Now, rename "I did not complete any formal education past high school" to "High school" and "Some college/university study without earning a bachelor's degree" to "Some college".

multiple_choice_responses %>%
  # rename levels
  mutate(FormalEducation = fct_recode(FormalEducation, 
                                      "High school" = "I did not complete any formal education past high school", 
                                      "Some college" = "Some college/university study without earning a bachelor's degree")) %>%
  # make a bar plot of FormalEducation
  ggplot(aes(x = FormalEducation)) + 
  geom_bar()