# To find mean of a number of items,
# the first step will be to create a vector and then use the command mean()
student.height <- c(100, 106, 121, 111, 109, 111, 103, 117, 114)
print(mean(student.height))

# Sometimes all values are not available. If there is no value for an item, it is stored as NA.
student.height1 <- c(100, 106, 121, 111, 109, 111, 103, 117, 114, NA, 1047)
print(mean(student.height1))

# In case as above, you will need to remove NA from the calculation.
# That can be done be done by argument na.rm = TRUE
student.height1 <- c(100, 106, 121, 111, 109, 111, 103, 117, 114, NA, 1047)
print(mean(student.height1, na.rm = TRUE))

# In the above case there is an extreme value of 1047.
# In some cases you might want to remove these outliers from the calculation.
# In R there is an option to trim the data. The argument trim = 0.1
# (for example) will remove 10% data from the top and 10% from the bottom.
student.height1 <- c(100, 106, 121, 111, 109, 111, 103, 117, 114, NA, 1047)
print(mean(student.height1, trim = 0.1, na.rm = TRUE))

#Calculate the average tempurature for nottem dataset, avg temp of Nottingham, 1920-1939
print(mean(nottem))