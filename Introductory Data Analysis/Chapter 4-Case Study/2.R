# Spam and !!!
#   Let's look at a more obvious indicator of spam: exclamation marks. exclaim_mess contains the number of exclamation marks in each message. Using summary statistics and visualization, see if there is a relationship between this variable and whether or not a message is spam.
# 
# Experiment with different types of plots until you find one that is the most informative. Recall that you've seen:
#   
#   Side-by-side box plots
# Faceted histograms
# Overlaid density plots
# Instructions
# 100 XP
# The email dataset is still available in your workspace.
# 
# Calculate appropriate measures of the center and spread of exclaim_mess for both spam and not-spam using group_by() and summarize().
# Construct an appropriate plot to visualize the association between the same two variables, adding in a log-transformation step if necessary.
# If you decide to use a log transformation, remember that log(0) is -Inf in R, which isn't a very useful value! You can get around this by adding a small number (like 0.01) to the quantity inside the log() function. This way, your value is never zero. This small shift to the right won't affect your results.
# Compute center and spread for exclaim_mess by spam
email %>%
  group_by(spam) %>%
  summarize(
    median(exclaim_mess),
    IQR(exclaim_mess))  



# Create plot for spam and exclaim_mess
email %>%
  mutate(log_exclaim_mess = log(exclaim_mess)) %>%
  ggplot(aes(x = log_exclaim_mess)) + 
  geom_histogram() + 
  facet_wrap(~ spam)

