#EX1: Use as.data.frame() to convert a matrix into a dataframe
mat <- matrix(1:25, nrow = 5)
print(as.data.frame(mat))#Run to see the o/p

#EX2: Check if mtcars is a dataframe using is.data.frame()
cars <- mtcars
print(is.data.frame(cars)) #Run to see the o/p

#EX3: What is the average mpg value for all the cars?
print(mean(mtcars$mpg)) #Run to see the o/p
