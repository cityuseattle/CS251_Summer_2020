set.seed(1234)

group1<-rnorm(100,mean=85,sd=5)
print(group1)
group2<-rnorm(100,mean=85,sd=5)
print(group2)

Group2_Matrix <- matrix(data = group2, nrow = 10, ncol = 10)

num_set<-c(0, 0.1, 0.2, 0.3, 0.4, 0.5, 0.6, 0.7, 0.8, 0.9, 1.0)

end<-length(num_set)

tTest.result.nochange<-t.test(x=group1,y=group2,var.equa=T)

for(i in 1:end){
    num_set_add<-(num_set[i])
    Group2_Matrix_Add<-Group2_Matrix + (num_set_add)
    group2a<-Group2_Matrix_Add
      tTest.result<-t.test(x=group1,y=group2a,var.equa=T)
      print(tTest.result$p.value)
}

#for(i in 1:end){
 #   smpl <-sample(x = values,prob = probabilities,
  #                  size = 3,replace=TRUE)
   # group2a <- append(smpl.means, mean(smpl))
    # }



