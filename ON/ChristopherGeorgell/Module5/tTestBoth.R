#hypothesized value
mu0<-15.4
#sample mean
xbar<-14.6
#sample standard deviation
s<-2.5
#sample size
n<-29

#t calculation
t<-(xbar-mu0)/(s/sqrt(n))

print("t is equal to")
print(t)

#calculate critical value
alpha<-0.05
t.half.alpha<-qt(1-alpha/2,df=n-1)

print("critical value is equal to")
print(c(-t.half.alpha,t.half.alpha))

if(t<=-t.half.alpha || t>=t.half.alpha){
    print("Reject the claim that mean mean penguin weight does not differ from last year")
} else{
    print("Do not reject claim that mean mean penguin weight does not differ from last year")
}