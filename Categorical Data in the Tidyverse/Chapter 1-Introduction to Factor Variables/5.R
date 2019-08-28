Reordering a variable by its frequency
Making effective visualizations is a big part of analyzing data. It's not about having all the information on the plot; how you display the information can change whether or how quickly someone can understand the message. One of the primary purposes of the forcats package is to make it easy to quickly change your visualizations when you're working with qualitative variables.

Let's make a chart of how many people are employed in each industry. We'll do two versions so you can judge which one is better. multiple_choice_responses has been loaded for you.

Instructions 2/2

Make a bar plot of EmployerIndustry.
Flip the coordinates using coord_flip() to make it more readable.
Now make the bar plot ordered from top to bottom, highest count to lowest.

# Make a bar plot
ggplot(multiple_choice_responses, aes(x = EmployerIndustry)) + 
  geom_bar() + 
  # flip the coordinates
  coord_flip()

# Make a bar plot 
ggplot(multiple_choice_responses, aes(x = fct_rev(fct_infreq(EmployerIndustry)))) + 
  geom_bar() + 
  # flip the coordinates
  coord_flip()
