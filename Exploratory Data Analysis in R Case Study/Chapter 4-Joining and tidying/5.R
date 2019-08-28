# Recoding the topics
# There's one more step of data cleaning to make this more interpretable. Right now, topics are represented by two-letter codes:
# 
# me: Palestinian conflict
# nu: Nuclear weapons and nuclear material
# di: Arms control and disarmament
# hr: Human rights
# co: Colonialism
# ec: Economic development
# So that you can interpret the data more easily, recode the data to replace these codes with their full name. You can do that with dplyr's recode() function, which replaces values with ones you specify:
#   
#   example <- c("apple", "banana", "apple", "orange")
# recode(example,
#        apple = "plum",
#        banana = "grape")
# Instructions
# 100 XP
# Use the recode() function from dplyr in a mutate() to replace each two-letter code in the votes_gathered data frame with the corresponding full name. Save this as votes_tidied.

# Replace the two-letter codes in topic: votes_tidied
votes_tidied <- votes_gathered %>%
  mutate(topic = recode(topic,
                        me = "Palestinian conflict",
                        nu = "Nuclear weapons and nuclear material",
                        di = "Arms control and disarmament",
                        hr = "Human rights",
                        co = "Colonialism",
                        ec = "Economic development"))