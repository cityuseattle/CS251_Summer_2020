A <- matrix(c(1, 2, 3, 4, 6, 7, 8, 9, 0), nrow = 3, ncol= 3,
dimnames = list(c("X", "Y", "Z"), c("A", "S", "D")));

#Minus row 3
print(A[-3,]);

#Select Number in R2C2
print(A[2,2]);

#Select elements & values based on more/less than
print(A[A>4]);

#Modify the value of the number at R2C2
A[2,2] <- 100;
print(A);

#Add a row using the rbind function
B <- rbind(A, c(1,2,3));
print(B);

#Add a column using the cbind function
C <- cbind(A, c(1,2,3));
print(C);

#Transpose a matrix using the t function
A <- t(A);
print(A);
