#hypothesized value
mu0<-15.4
#sample mean
xbar<-14.6
#population standard deviation
sigma<-2.5
#sample size
n<-35

#z calculation
z<-(xbar-mu0)/(sigma/sqrt(n))

print("z is equal to")
print(z)

#calculate critical value
alpha<-0.05
z.half.alpha=qnorm(1-alpha/2)

print("z.half.alpha is equal to")
print(c(-z.half.alpha,z.half.alpha))

if(z<=-z.half.alpha || z>=z.half.alpha){
    print("Reject the null hypothesis that the mean penguin weight does not differ from last year")
} else{
    print("Do not reject the null hypothesis that the mean penguin weight does not differ from last year")
}