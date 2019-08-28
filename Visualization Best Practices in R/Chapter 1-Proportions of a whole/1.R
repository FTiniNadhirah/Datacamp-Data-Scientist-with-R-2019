# Familiarizing with disease data
# The dataset containing disease cases from the World Health Organization (WHO) is loaded into your environment as the dataframe who_disease.
# 
# In order to familiarize yourself with the data, let's start by printing it to the console.
# 
# Once you've investigated it a bit, make a simple bar chart of the number of observations by region using the supplied code. You will need to fill in the aes()thetics function to map the x-axis to the proper column name.
# 
# This course touches on a lot of concepts you may have forgotten, so if you ever need a quick refresher, download the Tidyverse Cheat Sheet and keep it handy!
#   
#   Instructions
# 100 XP
# Instructions
# 100 XP
# Print dataframe by simply calling the it: who_disease.
# Modify ggplot code so aes() contains the region as its x-axis mapping.

# print dataframe to inspect
who_disease

# set x aesthetic to region column
ggplot(who_disease, aes(x=region)) +
  geom_bar()