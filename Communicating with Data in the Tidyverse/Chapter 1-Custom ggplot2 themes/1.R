# Join the two data sets together
# In the video, you have learned that the inner_join() function of dplyr needs to be given a "key" on which two data frames are joined. Actually, multiple keys that need to match can be specified. In this first exercise, you are going to join two data sets by two keys. The data frames ilo_hourly_compensation and ilo_working_hours are already loaded for you and are available in your workspace.
# 
# Instructions
# 100 XP
# Combine both ILO data frames ilo_hourly_compensation and ilo_working_hours using the inner_join() function of dplyr.
# Join both data frames by the variables "country" and "year".

# Join both data frames
ilo_data <- ilo_hourly_compensation %>%
  inner_join(ilo_working_hours, by = c("country", "year"))

# Count the resulting rows
ilo_data  %>% 
  count()

# Examine ilo_data
ilo_data