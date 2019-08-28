# More melts
# A data table containing confirmed Ebola case numbers from Guinea in weeks 50 and 51 of the outbreak has been loaded into your R session. Your goal is to melt ebola_wide into a long format data table containing a single column for the case numbers variable.
# 
# Instructions 1/2
# 50 XP
# 1
# 2
# Use the measure.vars argument to stack the columns "Week_50" and "Week_51". The new column containing its values should be called "cases", and the new column of variable labels should be called "period".
# 
# Print ebola_wide
ebola_wide

# Stack Week_50 and Week_51
melt(ebola_wide, measure.vars = c("Week_50", "Week_51"), 
     variable.name = "period", value.name = "cases")
# 
# Modify the call to melt() to also ask to keep only the "Location" column as row identifiers, dropping the "period_start" and "period_end" columns from the result.
# Modify the code
melt(ebola_wide, measure.vars = c("Week_50", "Week_51"), 
     variable.name = "period", value.name = "cases", 
     id.vars = "Location")