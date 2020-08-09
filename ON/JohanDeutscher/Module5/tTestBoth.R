mu0<-15.4 #hypothesized value
xbar<-14.6 #sample mean
s<-2.5 #population standard deviation
n<-29      #sample size

t<-(xbar-mu0)/(s/sqrt(n)) #test statistic
print("The value of t is equal to")
print(t)

#compute the critical value at .01 sig level

alpha<-0.01
t.half.alpha<-qt(1-alpha,df=n-1)
print("The value of t.half.alpha is")
print(c(-t.half.alpha,t.half.alpha))


if(t<=-t.half.alpha||t>=t.half.alpha){
    print("reject the null hypothesis that the mean penguin weight does not differ from last year")
} else{
    print("Do not reject the null hypothesis that the mean penguin weight does not differ from last year")
}