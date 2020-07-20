cars <- mtcars

x <- cars[, c(1,2,3)] #Grab cols 1 2 3
print(head(x)) #prints first 6 rows
# Run code check

y <- cars[, c('mpg','cyl')] #by name
print(head(y)) #Run code check

z <- cars[, -1] #Everything but the first column
print(head(z)) #Run code check

w <- cars[, -c(1,3)] #drop cols 1 and 3
print(head(w))