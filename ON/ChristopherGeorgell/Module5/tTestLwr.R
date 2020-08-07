#hypothesized value
mu0<-2
#sample mean
xbar<-1.8
#sample standard deviation
s<-0.15
#sample size
n<-10

#t calculation
t<-(xbar-mu0)/(s/sqrt(n))

print("t is equal to")
print(t)

#calculate critical value
alpha<-0.01
t.alpha<-qt(1-alpha,df=n-1)

print("critical value is equal to")
print(-t.alpha)

if(t<=-t.alpha){
    print("Reject the claim that mean life span of a battery is 2 years or more")
} else{
    print("Do not reject claim that mean life span of a battery is 2 years or more")
}