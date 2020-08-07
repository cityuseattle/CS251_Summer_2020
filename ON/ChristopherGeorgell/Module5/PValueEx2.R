#hypothesized value
mu0<-15.4
#sample mean
xbar<-14.6
#population standard deviation
sigma<-2.5
#sample size
n<-35
#significance level
alpha<-0.05

#z calculation
z<-(xbar-mu0)/(sigma/sqrt(n))

print("z is equal to")
print(z)

#apply pnorm() function to compute the two-tailed p-value of the 
#test statistic.
#It doubles the lower tail p-value as the sample mean is less
#than the hypothesized value.

pval<-2*pnorm(z)
print("pval is equal to")
print(pval)

if(pval<alpha){
    print("reject null hypothesis")
} else{
    print("dont reject null hypothesis")
}