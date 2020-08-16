#Samples before the machine
bp.before <- c(120, 122, 143, 100, 109)

#Sample patients samples after the medicine
bp.after <- c(122, 120, 141, 109, 109)

#The result of the test
result <- t.test(x = bp.before, y = bp.after, paired = T)

print(result)