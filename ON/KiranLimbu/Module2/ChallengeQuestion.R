# question 1
qes1 <- matrix(c(1,2,3,4,5,6,7,8,9), nrow=3, ncol=3, dimnames=list(c('A','B','C') ,c('X','Y','Z')));
print(qes1);

# question 2
cars <- mtcars;
print(cars[,c('am', 'gear', 'carb')]);

# question 3
test <- cars[,4] / cars[,6];
calc <- cbind(cars, performance=test);
print(calc);