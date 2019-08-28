# case_when() from multiple columns
# With data science being a new and rapidly growing field, there can be confusion about what defines a "data scientist." In some cases, especially for a data analyst, people might not have the title but they still identify themselves as data scientists. Let's look at whether there are differences in average job satisfaction depending on whether someone is a data analyst and how they self-define as a data scientist. The dataset multiple_choice_responses has been loaded for you.
# 
# Instructions 1/3
# 35 XP
# 1
# 2
# 3
# Remove people who selected Data Scientist for CurrentJobTitleSelect.
# 
multiple_choice_responses %>%
  # Filter out people who selected Data Scientist as their Job Title
  filter(CurrentJobTitleSelect != "Data Scientist") 
# 
# Create a new variable, job_identity, based on their current job title and whether they fully identify as a data scientist.
# 
multiple_choice_responses %>%
  # Filter out people who selected Data Scientist as their Job Title
  filter(CurrentJobTitleSelect != "Data Scientist") %>%
  # Create a new variable, job_identity
  mutate(job_identity = case_when(
    CurrentJobTitleSelect == "Data Analyst" & 
      DataScienceIdentitySelect == "Yes" ~ "DS analysts", 
    CurrentJobTitleSelect == "Data Analyst" & 
      DataScienceIdentitySelect %in% c("No", "Sort of (Explain more)") ~ "NDS analyst", 
    CurrentJobTitleSelect != "Data Analyst" & 
      DataScienceIdentitySelect == "Yes" ~ "DS non-analysts", 
    TRUE ~ "NDS non analysts")) 
# 
# 
# Get the mean JobSatisfaction by job_identity, removing NAs.
# 
# 
multiple_choice_responses %>%
  # Filter out people who selected Data Scientist as their Job Title
  filter(CurrentJobTitleSelect != "Data Scientist") %>%
  # Create a new variable, job_identity
  mutate(job_identity = case_when(
    CurrentJobTitleSelect == "Data Analyst" & 
      DataScienceIdentitySelect == "Yes" ~ "DS analysts", 
    CurrentJobTitleSelect == "Data Analyst" & 
      DataScienceIdentitySelect %in% c("No", "Sort of (Explain more)") ~ "NDS analyst", 
    CurrentJobTitleSelect != "Data Analyst" & 
      DataScienceIdentitySelect == "Yes" ~ "DS non-analysts", 
    TRUE ~ "NDS non analysts")) %>%
  # Get the average job satisfaction by job_identity, removing NAs
  group_by(job_identity) %>%
  summarize(avg_js = mean(JobSatisfaction, na.rm = TRUE))