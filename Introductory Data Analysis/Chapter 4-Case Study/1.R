# Spam and num_char
# Is there an association between spam and the length of an email? You could imagine a story either way:
#   
#   Spam is more likely to be a short message tempting me to click on a link, or
# My normal email is likely shorter since I exchange brief emails with my friends all the time.
# Here, you'll use the email dataset to settle that question. Begin by bringing up the help file and learning about all the variables with ?email.
# 
# As you explore the association between spam and the length of an email, use this opportunity to try out linking a dplyr chain with the layers in a ggplot2 object.
# 
# Instructions
# 100 XP
# Using the email dataset
# 
# Load the packages ggplot2, dplyr, and openintro.
# Compute appropriate measures of the center and spread of num_char for both spam and not-spam using group_by() and summarize(). No need to name the new columns created by summarize().
# Construct side-by-side box plots to visualize the association between the same two variables. It will be useful to mutate() a new column containing a log-transformed version of num_char.

# Load packages
library("ggplot2")
library(dplyr)
library(openintro)



# Compute summary statistics
email %>%
  group_by(spam) %>%
  summarize( 
    median(num_char),
    IQR(num_char))

# Create plot
email %>%
  mutate(log_num_char = log(num_char)) %>%
  ggplot(aes(x = spam, y = log_num_char)) +
  geom_boxplot()
