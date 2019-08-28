# # Dealing with empty and incomplete lines
# # When reading irregular files, i.e., files with varying/missing fields in rows, fread() tries to parse them intelligently. However, it may not be always possible to guess if the irregular lines should be skipped or imported by filling missing fields. For such cases, you can fread()'s has a fill argument.
# # 
# # You will be importing the following file:
# # 
# # id,name,val
# # 9002019291929192,Robert Whitaker,
# # 9200129401349301 ,Elisa Waters,190  
# # 9200149429834456 , Karla Schmidt  
# # Notice that the first and last lines are incomplete.
# # 
# # Instructions 1/2
# # 50 XP
# # 1
# # 2
# # Import the sample.csv file using fread() without any additional arguments. Notice the warning it generates.

# Import the file and note the warning message
incorrect <- fread("sample.csv")
incorrect

# Did you notice the warning message? fread() considered the last line as a footer and discarded it. Import the file (sample.csv) using fread() again, but this time, use the fill argument to ensure all rows are imported correctly.
# 
# Import the file correctly
correct <- fread("sample.csv", fill = TRUE)
correct