# EX 1: Use as.data.frame() to convert a matrix into a dataframe
mat <- matrix(1:25, nrow=5);
print(mat);

# convert to dataframe
print(as.data.frame(mat));

# EX 2: check if mtcars is a dataframe using is.data.frame()
cars <- mtcars; #mtcars is part of library
print(is.data.frame(cars));

# Ex 3: Find avg mpg value
print(mean(mtcars$mpg));