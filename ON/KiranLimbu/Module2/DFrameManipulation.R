# Create data frame
A <- data.frame(emp_id=c(1,2,3), names=c("John", "James", "Mary"), salary=c(111.1,222.2,333.3));
print(A);

# Modify value
A[1,2] <- "James";
print(A);

# Add row
B <- rbind(A, list(4, "Kiran", 444.4));
print(B);

# Add col
B <- cbind(A, state=c("NY", "NY", "NY"));
print(B);

# Delete a col
A$salary <- NULL;
print(A);

