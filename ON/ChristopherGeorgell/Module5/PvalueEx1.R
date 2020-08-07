#hypothesized value
mu0<-10000
#sample mean
xbar<-9900
#population standard deviation
sigma<-120
#sample size
n<-30
#significance level
alpha<-0.05

#z calculation
z<-(xbar-mu0)/(sigma/sqrt(n))

print("z is equal to")
print(z)

#apply the pnorm() function to compute lower tail p-value of
#the test statistic.
#If it turns out to be less than the significance level,
#we reject the null hypothesis

pval<-pnorm(z)
print("pval is equal to")
print(pval)

if(pval<alpha){
    print("reject null hypothesis")
}