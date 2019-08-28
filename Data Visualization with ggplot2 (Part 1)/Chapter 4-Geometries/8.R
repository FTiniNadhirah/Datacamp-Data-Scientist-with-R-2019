# Bar plots with color ramp, part 2
# In the previous exercise, you ended up with an incomplete bar plot. This was because for continuous data, the default RColorBrewer palette that scale_fill_brewer() calls is "Blues". There are only 9 colours in the palette, and since you have 11 categories, your plot looked strange.
# 
# In this exercise, you'll manually create a color palette that can generate all the colours you need. To do this you'll use a function called colorRampPalette().
# 
# The input is a character vector of 2 or more colour values, e.g. "#FFFFFF" (white) and "#0000FF" (pure blue). (See this exercise for a discussion on hexadecimal codes).
# 
# The output is itself a function! So when you assign it to an object, that object should be used as a function. To see what we mean, execute the following three lines in the console:
#   
#   new_col <- colorRampPalette(c("#FFFFFF", "#0000FF"))
# new_col(4) # the newly extrapolated colours
# munsell::plot_hex(new_col(4)) # Quick and dirty plot
# new_col() is a function that takes one argument: the number of colours you want to extrapolate. You want to use nicer colours, so we've assigned the entire "Blues" colour palette from the RColorBrewer package to the character vector blues.
# 
# Instructions
# 100 XP
# Instructions
# 100 XP
# 1 - Like in the example code above, create a new function called blue_range that uses colorRampPalette() to extrapolate over all 9 values of the blues character vector.
# 2 - Take the plot code from the last exercise (provided), and change scale_fill_brewer() to be scale_fill_manual(). Set the argument values = blue_range(11) inside scale_fill_manual().

# Final plot of last exercise
ggplot(Vocab, aes(x = education, fill = vocabulary)) +
  geom_bar(position = "fill") +
  scale_fill_brewer()

# Definition of a set of blue colors
blues <- brewer.pal(9, "Blues") # from the RColorBrewer package

# 1 - Make a color range using colorRampPalette() and the set of blues
blue_range <- colorRampPalette(blues)

# This is our new pallete. We can create it with as many colors as we want. 
munsell::plot_hex(blue_range(11)) 
# 2 - Use blue_range to adjust the color of the bars, use scale_fill_manual()
ggplot(Vocab, aes(x = education, fill = vocabulary)) +
  geom_bar(position = "fill") +
  scale_fill_manual(values = blue_range(11))

