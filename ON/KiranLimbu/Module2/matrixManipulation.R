A <- matrix(c(1,2,3,4,6,7,8,9,0), nrow=3, ncol=3, dimnames=list(c("X", "Y", "Z"), c("A", "S", "D")));

# Reference purpose print all
print(A);

# Select all rows except last row
print(A[-3,]);

# Select the number in second row in second column
print(A[2,2]);

# Select elements that are more then 4
print(A[A>4]);

# Modify the value of the element in the second row in second column
print(A[2,2] <- 100);

# Add a row
B <- rbind(A, c(10,12,13));
print(B);

# Add a column
C <- cbind(A, c(20,22,23));
print(C);

# To transpose a matrix, use the t() function
# switch row to column and vise-versa
A <- t(A);
print(A);