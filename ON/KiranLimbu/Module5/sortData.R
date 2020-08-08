# sort the data in ascending in petal.width column
data <- read.csv(file="iris2.csv", header=TRUE, sep=",")
# print(data[order(data$petal.width), ])

# sort in descending order
print(data[order(data$petal.width, decreasing=TRUE), ])
