A <- data.frame(emp_id=c(1,2,3), names=c("John", "James", "Mary"), salary =c(111.1, 222.2, 333.3));
print(A);

print(typeof(A));
print(class(A));

#ncol and nrow can be used to get the number of columns and rows
ncol(A);
nrow(A);

#str() can be used to get the structure
str(A);

#To select a column, use [], [[]], or $ to select
print(A["names"]);
print(A$names);
print(A[[2]]);
