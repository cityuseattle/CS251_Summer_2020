#sample from machine1
mc1<-c(150,150,151,149,151,151,148,151)

#sample from machine2
mc2<-c(152,146,152,150,155)

#conducting F test
result<-var.test(x=mc2,y=mc1,ratio=1,conf.level=0.90)
print(result)

#calculate F value
Fcal<-var(mc2)/var(mc1)
print(Fcal)

#to find F critical, you should find
#F distribution
Fcrit<-qf(p=0.05,df1=4,df2=7,lower.tail=FALSE)
print(Fcrit)