cars<-mtcars
print(head(cars))

#returns vectors
colv1<-cars$mpg
print(colv1)

#returns vector
colv2<-cars[,'mpg']
print(colv2)

#a is int or string
colv3<-cars[,1]
print(colv3)

#returns vector
colv4<-cars[['mpg']]
print(colv4)

#ways of returning data frames
mpgdf<-cars['mpg']
print(head(mpgdf))

#returns 1 col df
mpgdf2<-cars[1]
print(head(mpgdf2))
