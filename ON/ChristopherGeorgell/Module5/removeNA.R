#remove NA from dataset
data<-read.csv(file="iris2.csv",header=TRUE,sep=",")

print(na.omit(data))