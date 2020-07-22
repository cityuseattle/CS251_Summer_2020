A<-data.frame(emp_id=c(1,2,3), names=c("John","James","Mary"), salary=c(111.1,222.2,333.3))
print(A)

print(typeof(A))
print(class(A))

#to get the number of colums and rows, you can use ncol and nrow functions
ncol(A)
nrow(A)

#to get structures of data frame you can use str function
str(A)

#to select a column us [] or [[]] or $ to select
print(A["names"])
print(A$names)
print(A[[2]])