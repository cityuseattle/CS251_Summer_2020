#samples before the medicine
bp.before<-c(120,122,143,100,109)

#same patients samples after the medicine
bp.after<-c(122,120,141,109,109)

#results of the test
results<-t.test(x=bp.before,y=bp.after,paired=T)
print(results)
