# Manually collapsing levels
# There are 16 job titles (including "Other") that people could select in the survey. Let's collapse those into a couple big categories: "Computer Scientist", "Data analyst/scientist/engineer", "Researcher," and "Other." The dataset multiple_choice_responses has been loaded for you.
# 
# Instructions
# 100 XP
# Collapse the levels of CurrentJobTitleSelect into a new variable, grouped_titles.
# Then take grouped_titles and put everything that isn't one of those three grouped titles into "Other Title".
# Finally, get the count of all the grouped titles.

multiple_choice_responses %>%
  # Create new variable, grouped_titles, by collapsing levels in CurrentJobTitleSelect
  mutate(grouped_titles = fct_collapse(CurrentJobTitleSelect, 
                                       "Computer Scientist" = c("Programmer", "Software Developer/Software Engineer"), 
                                       "Researcher" = "Scientist/Researcher", 
                                       "Data Analyst/Scientist/Engineer" = c("DBA/Database Engineer", "Data Scientist", 
                                                                             "Business Analyst", "Data Analyst", 
                                                                             "Data Miner", "Predictive Modeler"))) %>%
  # Turn every title that isn't now one of the grouped_titles into "Other"
  mutate(grouped_titles = fct_other(grouped_titles, 
                                    keep = c("Computer Scientist", 
                                             "Researcher", 
                                             "Data Analyst/Scientist/Engineer"))) %>% 
  # Get a count of the grouped titles
  count(grouped_titles)