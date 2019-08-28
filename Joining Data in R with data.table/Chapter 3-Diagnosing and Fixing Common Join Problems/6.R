# Joining with missing values
# Two new data.tables have been loaded into your R session: heart and cardio. Each one contains a set of microarray probes you have found to be associated with heart disease in two separate studies*. Each probe measures the expression levels of a gene. Each gene can be measured by one or more probes, and some probes do not have any known gene annotation in the human genome reference sequence. The two studies have used different microarray platforms that use different probes to measure each gene. Your goal is to find which genes had reproducible associations with heart disease in both studies.
# 
# * Note: associations are randomly generated, not representative of any true biological finding or real dataset.
# 
# Instructions
# 100 XP
# Using the merge() function, inner join cardio to heart with the appropriate argument to override any errors that you encounter.
# Remove the probes from both data.tables with no gene annotation (i.e., remove rows with missing values in the gene column).
# Repeat the inner join with the new data.tables to get a data.table of reproducible associations between genes and heart disease.

# Try an inner join
merge(heart, cardio, by = "gene", allow.cartesian = TRUE)

# Filter missing values
heart_2 <- heart[!is.na(gene)]
cardio_2 <- cardio[!is.na(gene)]

# Inner join the filtered data.tables
merge(heart_2, cardio_2, by = "gene")