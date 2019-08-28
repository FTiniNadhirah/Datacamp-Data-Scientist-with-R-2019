# Creating an initial plot
# In the previous lessons, we tidied and cleaned our data to prepare it for visualization. Now we're ready to start recreating FiveThirtyEight's graph. Let's start with an initial plot. The dataset you created in the last chapter, rude_behaviors, is loaded.
# 
# Instructions
# 100 XP
# Order response_var by perc_rude
# Make a bar plot of response_var by perc_rude. Save it as initial_plot.



initial_plot <- rude_behaviors %>%
  # reorder response_var by perc_rude
  mutate(response_var = fct_reorder(response_var, perc_rude)) %>%
  # make a bar plot of perc_rude by response_var
  ggplot(aes(x = response_var, y = perc_rude)) + 
  geom_col() 

# View your plot
initial_plot