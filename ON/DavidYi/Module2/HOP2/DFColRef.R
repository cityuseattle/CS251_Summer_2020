cars <- mtcars #assign the dataset to cars variable
print(head(cars)) #print first 6 rows of the dataframe

colv1 <- cars$mpg #returns a vector
print(colv1) #Run code check

colv2 <- cars[,'mpg'] #returns vector
print(colv2) #Run code check

colv3 <- cars [,1] #a is int or string
print(colv3) #Run code check

colv4 <- cars[['mpg']] #returns a vector
print(colv4) #Run code check



#Ways of Returning data frames
mpgdf <- cars['mpg'] #returns 1 col df
print(head(mpgdf)) #shows the first 6 rows

mpgdf2 <- cars[1] #returns 1 col df
print(head(mpgdf2))