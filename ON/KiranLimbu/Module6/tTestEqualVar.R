# Two Sample t Test
# Equal variance - use pooled variance

# Assume mc1 & mc2 are the two samples for the test
mc1 <- c(150, 152, 154, 152, 151)
mc2 <- c(156, 155, 158, 155, 154)

# First check the equality of variance - F test will be covered later
print(var.test(x=mc1, y=mc2)) # in o/p p-value is high > 0.05 then the two variances are equal

# Then we will do the t.test for equal variance
tTest.result <- t.test(x = mc1, y = mc2, var.equal = T)
print(tTest.result)
