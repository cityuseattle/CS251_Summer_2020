#Ex.1 Use as.dataframe() to convert a matrix into a df
mat <- matrix(1:25,nrow = 5)
print(as.data.frame(mat)); #Run code

#Ex.2 Check if mtcars is a df using is.data.frame()
cars <- mtcars
print(is.data.frame(cars)) #Run code

#Ex.3 What is the avg mpg value for all the cars?
print(mean(mtcars$mpg)) #Run code
