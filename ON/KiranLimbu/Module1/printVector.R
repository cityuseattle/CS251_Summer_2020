# Creat a vector
A <- c(1, 2, 3, 4, 5, 6);
print(A);
print(typeof(A));
print(class(A));
print(length(A));

# Create a vector using : operator
B <- 1:8
print(B);

# Retrieve the second element of the vector
print((B[2]));

# Retrieve the second and the fifth element
print(B[c(2, 5)]);

# Retrieve all elements of the vector except the second value
print(B[-2]);

# Retrieve the elements of a vector using a logical vector
print(B[c(FALSE, TRUE, FALSE, TRUE, FALSE, TRUE, FALSE, TRUE)]);

# Retrieve elements greater then 5
print(B[B > 5]);

# Modify vector value
B[3] <- 9
print(B);