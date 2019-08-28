# Concatenating data.table variables
# Three data.tables containing Ebola case numbers reported in Guinea to the World Health Organisation for three weeks at the height of the 2014 Ebola outbreak have been loaded into your R session: ebola_W50, ebola_W51, and ebola_W52. Your goal is to create a single data.table containing the case numbers in each region of Guinea across all three weeks.
# 
# Instructions 1/3

# Concatenate ebola_W50 and ebola_W51 (in that order) using the rbind() function.
# Concatenate case numbers from weeks 50 and 51
rbind(ebola_W50, ebola_W51)
# Instructions 2/3
# Modify your call to rbind() to also concatenate ebola_W52. You should get an error.
# Concatenate case numbers from all three weeks
rbind(ebola_W50, ebola_W51, ebola_W52)
# 
# Instructions 3/3
# 
# Fix your call to rbind() so that the three data.tables are successfully concatenated.

# Modify the code
rbind(ebola_W50, ebola_W51, ebola_W52, fill = TRUE)