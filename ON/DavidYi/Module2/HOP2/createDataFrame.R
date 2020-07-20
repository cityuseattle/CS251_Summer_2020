A <- data.frame(emp_id=c(1,2,3),names=c("John","James","Mary"),salary=c(111.1,222.2,333.3))
print(A)

print(typeof(A))
print(class(A))

#To get the number of columns and rows, use ncol() and nrow() functions
print(ncol(A))
print(nrow(A))

#to get the structure of the data frame, use str() function
print(str(A))

#To select a column, use [], [[]], or $ to select
print(A["names"])
print(A$names)
print(A[[2]])