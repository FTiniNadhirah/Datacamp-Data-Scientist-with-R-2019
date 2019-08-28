# Exercise
# Exercise
# Choosing geoms, part 1
# qplot automatically takes care of assigning a geom to our plot given the type of data, but you can specify the geom yourselves.
# 
# Instructions
# 100 XP
# Make a quick plot using qplot(). Use the mtcars dataset and plot only factor(cyl) onto x. Which geom does qplot() choose?
#   Extend the previous qplot() command so that it maps factor(vs) onto y. Which geom does qplot() use now?
#   The previous plot had overlapping points. For the last instruction, copy the previous qplot(), but manually set geom to "jitter" in qplot().

# qplot() with x only
qplot(x = factor(cyl), data = mtcars)

# qplot() with x and y
qplot(x = factor(cyl), y = factor(vs), data = mtcars)

# qplot() with geom set to jitter manually
qplot(x = factor(cyl), y = factor(vs), data = mtcars, geom = 'jitter')