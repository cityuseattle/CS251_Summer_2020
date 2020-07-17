cars <- mtcars
print(head(cars));

# Return only mpg
colv1 <- cars$mpg;
print(colv1);

colv2 <- cars[, 'mpg'];
print(colv2);

colv3 <- cars[,1];
print(colv3);

colv4 <- cars[['mpg']];
print(colv4);

# ways of returning data frames

# Using head return only first 6 rows
mpgdf <- cars['mpg']; # Select only one col
print(head(mpgdf));

# also returns one col
mpgdf2 <- cars[1];
print(head(mpgdf2));