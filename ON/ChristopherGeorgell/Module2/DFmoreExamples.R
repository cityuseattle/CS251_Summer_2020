#Ex1 Use data frame to conver a matrix into data frame
mat<-matrix(1:25,nrow=5)
print(as.data.frame(mat))

#Ex2 Check if mtcars is a data frame using is.data.frame
cars<-mtcars
print(is.data.frame(cars))

#Ex3 What is average mpg value for all the cars?
print(mean(mtcars$mpg))
