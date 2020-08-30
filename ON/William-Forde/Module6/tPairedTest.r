#Samples before the medicine
bp.before <- c(120, 122, 143, 100, 109)

#Same patients samples after the medicine
bp.after <- c(122, 120, 141, 109, 109)

#The results of the test
result <- t.test(x = bp.before, y = bp.after, paired = T)
print(result)