data <- read.csv(file="iris2.csv", header=TRUE, sep=",")


res <- subset(data, variety=="Setosa")

#print(res)

#Write filtered data into a new CSV File.
write.csv(res,"result.csv")