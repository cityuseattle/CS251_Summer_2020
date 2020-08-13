#Two Sample T Test
#Equal variance - use pooled variance

#assume mc1 & mc2 are the two samples for the test
mc1<-c(150,152,154,152,151)
mc2<-c(156,155,158,155,154)

#first check the equality of variance - F test will be covered later
print(var.test(x=mc1,y=-mc2))
#the o/p of the run: p-value is high > 0.05 then the 
#two variances are equal

#then we will do the t.test for equal variance
tTest.results<-t.test(x=mc1,y=mc2,var.equa=T)
print(tTest.results)