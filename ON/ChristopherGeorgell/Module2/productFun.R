A<-c(1:5)

#productVect is the function name, the function argument in this
#case is a vector
productVect<-function(a){
    res<-1
    for(e in a){
        res<-res*e
    }
    productVect=res
}
print(productVect(A))

B<-c(1:10)
print(productVect(B))