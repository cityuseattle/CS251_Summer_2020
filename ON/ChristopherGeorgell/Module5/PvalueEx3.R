#hypothesized value
mu0<-2
#sample mean
xbar<-1.8
#sample standard deviation
s<-0.15
#sample size
n<-10
#significance level
alpha<-0.01

#t calculation
t<-(xbar-mu0)/(s/sqrt(n))

print("t is equal to")
print(t)

#apply pt() function to compute the lower tail p-value of the 
#statistic.
pval<-pt(t,df=n-1)
print("pval is equal to")
print(pval)

if(pval<alpha){
    print("reject null hypothesis")
} else {
    print("do not reject null hypothesis")
}
