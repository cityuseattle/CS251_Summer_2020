#Create a list
A <- list("a", "b", 1, 2);
print(A);

#Display data type or data structure
print(str(A));

#Display data type
print(typeof(A));

#Get length
print(length(A));

#Retrieve the values in the list using an interger
print(A[1]);

#Retrieve values using vector
print(A[c(1:2)]);

#Retrieve values using logical vector
print(A[c(TRUE, FALSE, TRUE, FALSE)]);

#Modify a value
A[[2]] <- "n";
print(A);

#Delete a value
A[[2]] <- NULL;
print(A);