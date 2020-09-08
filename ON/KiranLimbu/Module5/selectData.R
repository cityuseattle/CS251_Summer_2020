# select only those with variety = Setosa
data <- read.csv(file="iris2.csv", header=TRUE, sep=",")
res <- subset(data, variety=="Setosa")
print(res)

# Copy output in another csv file
write.csv(res, "result.csv")