# Changing the order of factor levels
# In previous exercises, we've worked with the questions in the Kaggle dataset whose answers had no inherent order, like the question about current job title. But other questions do have answers that are ordered. This could be something like a person rating how much they agree with a statement on a 5-point scale from "strongly disagree" to "strongly agree." We'll look at one question in the survey about the tools people use at work and whether they're internal or external. multiple_choice_responses has been loaded for you.
# 
# Instructions 1/2
# 50 XP
# 1
# 2
# Print the levels of WorkInternalVsExternalTools.
# Manually reorder the levels from Entirely internal to Entirely external, putting Do not know last.
# 
# Get the levels of WorkInternalVsExternalTools
levels(multiple_choice_responses$WorkInternalVsExternalTools)

# Reorder the levels from internal to external 
mc_responses_reordered <- multiple_choice_responses %>%
  mutate(WorkInternalVsExternalTools = fct_relevel(WorkInternalVsExternalTools, 
                                                   "Entirely internal", "More internal than external", 
                                                   "Approximately half internal and half external", 
                                                   "More external than internal", "Entirely external", 
                                                   "Do not know")) 
# 
# 
# Using the new dataset, mc_responses_reordered, make a bar plot of the frequency of the responses of WorkInternalVsExternalTools.
# 
# Make a bar plot of the responses
ggplot(mc_responses_reordered, aes(WorkInternalVsExternalTools)) + 
  geom_bar() + 
  coord_flip()