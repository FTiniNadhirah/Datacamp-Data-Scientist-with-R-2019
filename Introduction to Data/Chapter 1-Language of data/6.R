# Combining levels of a different factor
# Another common way of creating a new variable based on an existing one is by combining levels of a categorical variable. For example, the email50 dataset has a categorical variable called number with levels "none", "small", and "big", but suppose we're only interested in whether an email contains a number. In this exercise, we will create a variable containing this information and also visualize it.
# 
# For now, do your best to understand the code we've provided to generate the plot. We will go through it in detail in the next video.
# 
# Instructions
# 100 XP
# Instructions
# 100 XP
# Create a new column in email50 called number_yn that is "no" if there is no number in the email and "yes" otherwise. Use case_when() for this. Assign this to email50_fortified.
# Run the code provided to visualize the distribution of the number_yn variable.

# Create number_yn variable in email50
email50_fortified <- email50 %>%
  mutate(
    number_yn = case_when(
      # if number is "none", make number_yn "no"
      number == "none" ~ "no",
      # if number is not "none", make number_yn "yes"
      number != "none" ~ "yes"
    )
  )

# Visualize the distribution of number_yn
ggplot(email50_fortified, aes(x = number_yn)) +
  geom_bar()