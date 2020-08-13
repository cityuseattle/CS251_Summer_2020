mc1<-c(150,151,152,152,151,150)
mc2<-c(153,152,148,151,149,152)
mc3<-c(156,154,155,156,157,155)

#data prepartaion - create data frame
volume<-c(mc1,mc2,mc3)
print(volume)

machine<-rep(c("machine 1","machine 2","machine 3"),
        times=c(length(mc1),length(mc2),length(mc3)))

vol.mc<-data.frame(volume,machine)
print(vol.mc)

mc.aov<-aov(data=vol.mc, formula=volume~machine)
print(summary(mc.aov))

#visualize the value of each machine
boxplot(mc1,mc2,mc3)

print(TukeyHSD(x=mc.aov))