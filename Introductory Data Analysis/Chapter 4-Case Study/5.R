# Answering questions with chains
# When you have a specific question about a dataset, you can find your way to an answer by carefully constructing the appropriate chain of R code. For example, consider the following question:
#   
#   "Within non-spam emails, is the typical length of emails shorter for those that were sent to multiple people?"
# 
# This can be answered with the following chain:
#   
#   email %>%
#   filter(spam == "not-spam") %>%
#   group_by(to_multiple) %>%
#   summarize(median(num_char))
# The code makes it clear that you are using num_char to measure the length of an email and median() as the measure of what is typical. If you run this code, you'll learn that the answer to the question is "yes": the typical length of non-spam sent to multiple people is a bit lower than those sent to only one person.
# 
# This chain concluded with summary statistics, but others might end in a plot; it all depends on the question that you're trying to answer.
# 
# Instructions
# 100 XP
# Instructions
# 100 XP
# Build a chain to answer each of the following questions, both about the variable dollar.
# 
# For emails containing the word "dollar", does the typical spam email contain a greater number of occurrences of the word than the typical non-spam email? Create a summary statistic that answers this question.
# If you encounter an email with greater than 10 occurrences of the word "dollar", is it more likely to be spam or not-spam? Create a barchart that answers this question.

# Question 1
email %>%
  filter(spam == "not-spam") %>%
  group_by(to_multiple) %>%
  summarize(median(num_char))

email %>%
  filter(dollar > 0) %>%
  group_by(spam) %>%
  summarize(median(dollar))
# Question 2
email %>%
  filter(dollar > 10) %>%
  ggplot(aes(x = spam)) +
  geom_bar()