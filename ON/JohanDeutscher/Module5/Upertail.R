mu0<-2 #hypothesized value
xbar<-2.1 #sample mean
sigma<-0.25 #population standard deviation
n<-35      #sample size

z<-(xbar-mu0)/(sigma/sqrt(n)) #test statistic

print("z is equal to")
print(z)

#calculate the critical value
alpha<-0.05
z.alpha<-qnorm(1-alpha)

print("critical value is equal to")
print(z.alpha)

if(z>=z.alpha){
    print("we reject the claim that there is at most 2 grams of saturated fat in a cookie")
} else{
    print("Do not reject the claim that there is at most 2 grams of saturated fat in a cooking")
}