# Dropping levels
# The contingency table from the last exercise revealed that there are some levels that have very low counts. To simplify the analysis, it often helps to drop such levels.
# 
# In R, this requires two steps: first filtering out any rows with the levels that have very low counts, then removing these levels from the factor variable with droplevels(). This is because the droplevels() function would keep levels that have just 1 or 2 counts; it only drops levels that don't exist in a dataset.
# 
# Instructions
# 100 XP
# Instructions
# 100 XP
# The contingency table from the last exercise is available in your workspace as tab.
# 
# Load the dplyr package.
# Print tab to find out which level of align has the fewest total entries.
# Use filter() to filter out all rows of comics with that level, then drop the unused level with droplevels(). Save the simplified dataset over the old one as comics.

# Load dplyr
library(dplyr)

# Print tab
tab

# Remove align level
comics_filtered <- comics %>%
  filter(align != "Reformed Criminals") %>%
  droplevels()

# See the result
comics_filtered