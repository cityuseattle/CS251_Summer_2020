#Create a list
A <- list("a", "b", 1, 2);
print(A);

#To see the element data type or the data structure
print(str(A))

#To see the data structure type of the list
print(typeof(A));

#To get the length or number of elements in a list
print(length(A));

#Retrive the values in a list using an interger
print(A[1]);

#Retrive the values in a list using an interger vector
print(A[c(1:2)]);

#Retrive the values using a logical vector
print(A[c(TRUE, FALSE, FALSE, FALSE)]);

#Modify a value or element in the list
A[[2]] <- "n";
print(A);

#To delete an element or value in a list
A[[2]] <- NULL;
print(A);