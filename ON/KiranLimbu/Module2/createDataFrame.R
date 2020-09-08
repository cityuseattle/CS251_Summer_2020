# Create a Data Frame
A <- data.frame(emp_id=c(1,2,3), names=c("John", "James", "Mary"), salary=c(111.1,222.2,333.3));
print(A);

# Check if the variable is data frame type
print(typeof(A));
print(class(A));

# Find out how many rows and cols in the data frame
ncol(A);
nrow(A);

# Structure of the data frame
str(A);

# To select a column, use [], [[]], or $
print(A["names"]);
print(A$names);
print(A[[2]]);
print(A[,2]);