a<- c(1,2,3,4,5,5,5,6,7,8)

#range will returen the in and max values in the vector
res<-range(a)
print(res)

#to get the range for a data set
#we will use nottem dataset as an example
temp<-nottem
print(range(temp))

#you can get the quartiles by using the quantile() function
print(quantile(a))

#the interquartile range is the measure of the difference between 
#Q3 and Q1
InterQuantilValue<- IQR(a)
print(InterQuantilValue)