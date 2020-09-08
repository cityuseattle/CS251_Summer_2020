# find median
student.height <- c(100, 106, 121, 111, 109, 111, 103, 117, 114);
print(median(student.height));

# create table to see mode
print(table(student.height));

# from this table you can see that the height 111 is repeated the most
# you want to get the highest frequency, so you use the following command
a <- table(student.height);
print(names(a)[which(a==max(a))]);

# Calculate the median value for nottem
print(median(nottem));

# create table to see mode
print(table(nottem));

# Calculate the mode for nottem dataset
k <- table(nottem);
print(names(k)[which(k == max(k))]);