mu0<-2 #hypothesized value
xbar<-1.8 #sample mean
s<-0.15 #population standard deviation
n<-10      #sample size

t<-(xbar-mu0)/(s/sqrt(n)) #test statistic
print("The value of t is equal to")
print(t)

#compute the critical value at .01 sig level

alpha<-0.01
t.alpha<-qt(1-alpha,df=n-1)
print("The value of t is")
print(-t.alpha)


if(t<=-t.alpha){
    print("reject the null hypothesis that the average life span of a battery is 2 or more years")
} else{
    print("Do not reject the null hypothesis that the average life span of a battery is 2 or more years")
}