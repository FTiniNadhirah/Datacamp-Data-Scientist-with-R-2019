# Exercise
# Exercise
# Fast writing to disk
# As mentioned in the video, fwrite() writes data to disk is very fast! Also, just like fread() reads data in parallel, fwrite() also writes to file in parallel. The number of threads to write data to disk can be controlled using nThread argument.
# 
# Instructions 1/2
# 50 XP
# 1
# 2
# Write batrips to file using base R's write.table().
# Wrap the call inside system.time() to see how long this operation takes.

# Use write.table() to write batrips
system.time(write.table(batrips, "base-r.txt"))

# Write batrips to file using data.table's fwrite().
# Wrap the call inside system.time() to see how long this operation takes.

# Use fwrite() to write batrips
system.time(fwrite(batrips, "data-table.txt"))