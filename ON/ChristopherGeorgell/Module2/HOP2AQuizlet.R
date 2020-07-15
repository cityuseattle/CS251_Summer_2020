#Question 1
x<-c(1,2,3)
y<-c(4,5,6)
z<-c(7,8,9)

A<-matrix(c(x,y,z),nrow=3)
print(A)

rownames(A)<-c('a','b','c')
print(A)

#Question 2
s<-mtcars[,c("am","gear","carb")]
print(s)

#Question 3
C<-mtcars
P<-cbind(C,Performance=c(C[,'hp']/C[,'wt']))
print(P)

