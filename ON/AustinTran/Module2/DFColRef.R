cars <- mtcars; #assign the dataset to cars variable
print(head(cars)); #print first 6 rows of df

colv1 <- cars$mpg; # return a vector
print(colv1); #Run code

colv2 <- cars[, 'mpg']; # returns vector
print(colv2); #Run code

colv3 <- cars[, 1]; #a is int or string
print(colv3); #Run code

colv4 <- cars[['mpg']]; #returns a vector
print(colv4); #Run code

#Ways of returning data frames
mpgdf <- cars['mpg']; #Returns 1 col df
print(head(mpgdf)); #Head used to show only first 6 rows

mpgdf2 <- cars[1]; #returns 1 col df
print(head(mpgdf2));
