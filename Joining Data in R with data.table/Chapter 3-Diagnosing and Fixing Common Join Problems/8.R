# Exercise
# Exercise
# Joining and filtering duplicates
# Another data.table has been loaded into your R session, framingham, containing a set of 35 genes and their associations with heart disease from an open access study by Joehanes R. et al. published in 2013. Your goal is to compare the results of this study to the results from each of your studies. The cardio_2 and heart_2 data.tables filtered for missing values, but still containing multiple probes for each gene, have been loaded into your R session. The data.table of reproducible associations you created in the last exercise, reproducible, has also been loaded into your R session.
# 
# Instructions
# 100 XP
# Using the data.table syntax, right join framingham to heart_2, taking the first probe for each gene in heart_2.
# Anti-join framingham to reproducible to see whether you found any genes that have not previously been seen to have an association with heart disease.

# Right join taking the first match
heart_2[framingham, on = .(gene), mult = "first"]

# Anti-join
reproducible[!framingham, on = .(gene)]