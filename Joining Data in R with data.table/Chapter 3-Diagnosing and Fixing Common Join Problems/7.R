# Exercise
# Exercise
# Filtering duplicates
# The heart_2 and cardio_2 data tables you filtered for missing values are available in your workspace. Your goal is to select one representative probe per gene in each data.table so that each gene has only a single entry in the join result. You want to select the probe with the weakest association to get a conservative estimate of reproducibility. The "change" column contains the fold change in expression levels for each probe between the healthy subjects and those with heart disease*. The "pvalue" column contains the p-value for the association strength. Rows are ordered by decreasing order of association strength (by increasing P-value).
# 
# * Note: associations are randomly generated, not representative of any true biological finding or real dataset.
# 
# Instructions
# 100 XP
# Use the unique() function to remove duplicate entries in the "gene" column in both heart_2 and cardio_2. Keep only the last row for each gene.
# Inner join cardio_3 to heart_3 using the merge() function. Append ".heart" and ".cardio" as suffixes to the "change" and "pvalue" columns.
# Keep only the last probe for each gene
heart_3 <- unique(heart_2, by = "gene", fromLast = TRUE)
cardio_3 <- unique(cardio_2, by = "gene", fromLast = TRUE)

# Inner join
reproducible <- merge(heart_3, cardio_3, by = "gene", suffixes = c(".heart", ".cardio"))
reproducible