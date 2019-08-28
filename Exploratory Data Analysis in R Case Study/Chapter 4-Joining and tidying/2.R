# Filtering the joined dataset
# There are six columns in the descriptions dataset (and therefore in the new joined dataset) that describe the topic of a resolution:
#   
#   me: Palestinian conflict
# nu: Nuclear weapons and nuclear material
# di: Arms control and disarmament
# hr: Human rights
# co: Colonialism
# ec: Economic development
# Each contains a 1 if the resolution is related to this topic and a 0 otherwise.
# 
# Instructions
# 100 XP
# Filter the votes_joined dataset for votes relating to colonialism.

# Filter for votes related to colonialism

votes_joined %>% 
  filter(co == 1)