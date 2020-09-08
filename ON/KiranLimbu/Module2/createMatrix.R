# Create matrix
A <- matrix(c(1,2,3,4,6,7,8,9,0), nrow=3, ncol=3);
print(A);

# Use dimnames to rename the rows and columns
A <- matrix(c(1,2,3,4,6,7,8,9,0), nrow=3, ncol=3,
dimnames=list(c("X", "Y", "Z"), c("A", "S", "D")));
print(A);

# Get dimension of matrix
print(class(A));
print(attributes(A));

# Get column name and row name
print(colnames(A))
print(rownames(A))

# Create matrix using column binding function
B <- cbind(c(1,2,3), c(4,5,6));
print(B);

# test
print(cbind(c(1,2,3), c(4,5,6)));

# Create matrix using row binding function
C <- rbind(c(1,2,3), c(4,5,6));
print(C);

# Select first row
print(A[1,]);

# Select first column
print(A[,1]);