# Position
# You saw how jittering worked in the video, but bar plots suffer from their own issues of overplotting, as you'll see here. Use the "stack", "fill" and "dodge" positions to reproduce the plot in the viewer.
# 
# The ggplot2 base layers (data and aesthetics) have already been coded; they're stored in a variable cyl.am. It looks like this:
#   
#   cyl.am <- ggplot(mtcars, aes(x = factor(cyl), fill = factor(am)))
# Instructions
# 100 XP
# Instructions
# 100 XP
# Add a geom_bar() call to cyl.am. By default, the position will be set to "stack".
# Fill in the second ggplot command. Explicitly set position to "fill" inside geom_bar().
# Fill in the third ggplot command. Set position to "dodge".
# The position = "dodge" version seems most appropriate. Finish off the fourth ggplot command by completing the three scale_ functions:
#   scale_x_discrete() takes as its only argument the x-axis label: "Cylinders".
# scale_y_continuous() takes as its only argument the y-axis label: "Number".
# scale_fill_manual() fixes the legend. The first argument is the title of the legend: "Transmission". Next, values and labels are set to predefined values for you. These are the colors and the labels in the legend.
# The base layer, cyl.am, is available for you
# Add geom (position = "stack" by default)
cyl.am + 
  geom_bar()

# Fill - show proportion
cyl.am + 
  geom_bar(position = "fill")    

# Dodging - principles of similarity and proximity
cyl.am +
  geom_bar(position = "dodge") 
# Clean up the axes with scale_ functions
val = c("#E41A1C", "#377EB8")
lab = c("Manual", "Automatic")
cyl.am +
  geom_bar(position = "dodge") +
  scale_x_discrete(name = "Cylinders") + 
  scale_y_continuous(name = "Number") +
  scale_fill_manual(name = "Transmission", 
                    values = val,
                    labels = lab)  


