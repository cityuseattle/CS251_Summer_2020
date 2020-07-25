cars <- mtcars

x <- cars[, c(1,2,3)] #Grabs col 1 2 3
print(head(x)) #Print first 6 rows
#Run code

y <- cars[, c('mpg', 'cyl')] # by name
print(head(y)) #Run code

z <- cars[, -1] #keep all but first column
print(head(z)) #Run code

w <- cars[, -c(1,3)] #drops cols 1 and 3
print(head(w))

