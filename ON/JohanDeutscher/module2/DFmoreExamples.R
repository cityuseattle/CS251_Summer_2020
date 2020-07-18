#Ex1: Use as.data.fram() to convert a matrix into a dataframe
mat<-matrix(1:25,nrow=5)
print(as.data.frame(mat))

#Ex 2: Check if mtcars is a datafram using is.data.frame()
cars<-mtcars
print(is.data.frame(cars))

#Ex3: what is the average mpg value for all the cars?
print(mean(mtcars$mpg))