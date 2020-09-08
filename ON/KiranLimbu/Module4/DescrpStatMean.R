# Find mean
student.height <- c(100, 106, 121, 111, 109, 111, 103, 117, 114);
print(mean(student.height));

# some times all values are not available.
student.height <- c(100, 106, 121, 111, 109, 111, 103, 117, 114, NA);
print(mean(student.height));

#In case as above, you will need to remove NA from set
student.height <- c(100, 106, 121, 111, 109, 111, 103, 117, 114, NA);
print(mean(student.height, na.rm = TRUE));

# In some case there is an extreme value of 1047
# In some case you might want to remove these outliers from the calculation
student.height1 <- c(100, 106, 121, 111, 109, 111, 103, 117, 114, NA, 1047);
print(mean(student.height1, trim = 0.1, na.rm = TRUE));

# Calculate the average temp
print(mean(nottem));

