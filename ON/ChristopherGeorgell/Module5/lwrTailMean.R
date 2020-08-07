#hypothesized value
mu0<-10000
#sample mean
xbar<-9900
#population standard deviation
sigma<-120
#sample size
n<-30

#z calculation
z<-(xbar-mu0)/(sigma/sqrt(n))

print("z is equal to")
print(z)

#calculate critical value
alpha<-0.05
z.alpha<-qnorm(1-alpha)

print("critical value is equal to")
print(z.alpha)

if(z<=z.alpha){
    print("Reject the claim that mean lifetime of a lightbulb is above 10,000 hours")
} else{
    print("Do not reject claim that mean lifetime of a lightbulb is above 10,000 hours")
}