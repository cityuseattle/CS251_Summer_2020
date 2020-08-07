#hypothesized value
mu0<-2
#sample mean
xbar<-2.1
#population standard deviation
sigma<-0.25
#sample size
n<-35

#z calculation
z<-(xbar-mu0)/(sigma/sqrt(n))

print("z is equal to")
print(z)

#calculate critical value
alpha<-0.05
z.alpha<-qnorm(1-alpha)

print("z.alpha is equal to")
print(z.alpha)

if(z>=z.alpha){
    print("We reject the claim that there is at most 2 grams of saturated fat in a cookie")
} else{
    print("Do not reject the claim that there is at most 2 grams of saturated fat in a cookie")
}