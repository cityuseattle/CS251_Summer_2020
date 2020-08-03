A <- c(1,2,3,4,5,5,5,6,7,8)

#Range will return the in and max values in the vector
res <- range(A)
print(res)

#To get the difference between the max and the min, you can use
print(diff(res))

#To get the range for a data set:
#We will use nottem dataset as an example
temp <- nottem
print(range(temp))


#You can get the quartiles by using the quantile() function
print(quantile(A))

#The interquantile range is the measure of the difference between Q3 & Q1
InterQuantiValue <- IQR(A)
print(InterQuantiValue)
