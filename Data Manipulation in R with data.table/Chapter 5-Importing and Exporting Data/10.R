# Writing date and time columns
# fwrite() provides several fast and consistent ways of writing date and datetime columns to files using the dateTimeAs argument. In order for you to clearly understand how this works, you will be working batrips_dates, which consists of two columns and five rows:
#   
#   start_date            end_date
# 1: 2014-01-01 00:14:00 2014-01-01 00:21:00
# 2: 2014-01-01 00:14:00 2014-01-01 00:21:00
# 3: 2014-01-01 00:17:00 2014-01-01 00:42:00
# 4: 2014-01-01 00:23:00 2014-01-01 00:50:00
# 5: 2014-01-01 00:23:00 2014-01-01 00:50:00
# Instructions 1/3
# 35 XP
# 1
# 2
# 3
# Write the batrips_dates to "iso.txt" file using the "ISO" format.
# Import the file back using fread() and print it to understand how the datetime columns were written to file.

# Write batrips_dates to file using "ISO" format
fwrite(batrips_dates, "iso.txt", dateTimeAs = "ISO")

# Import the file back
iso <- fread("iso.txt")
iso

# Write batrips_dates to "squash.txt" file using the "squash" format.

# Write batrips_dates to file using "squash" format
fwrite(batrips_dates, "squash.txt", dateTimeAs = "squash")

# Import the file back
squash <- fread("squash.txt")
squash

# Write the batrips_dates to "epoch.txt" file using the "epoch" format.

# Write batrips_dates to file using "epoch" format
fwrite(batrips_dates, "epoch.txt", dateTimeAs = "epoch")

# Import the file back
epoch <- fread("epoch.txt")
epoch
