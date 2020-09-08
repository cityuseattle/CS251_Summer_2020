v <- c(1:30);
print(v); 

# Question 1
# select elements multiple of 3 or 5
v.sub1 <- v[v%%3==0 | v%%5==0];
print(v.sub1);

# Question 2
# select values greater then 15
v.sub2 <- v[v>15];
print(v.sub2);

# Question 3
# calculate mean and standard deviation
# v
print(mean(v));
print(sd(v));

# sub1
print(mean(v.sub1));
print(sd(v.sub1));

# sub2
print(mean(v.sub2));
print(sd(v.sub2));

# Question 4
# find CV
cv1 <- sd(v) / mean(v);
print(cv1);

cv2 <- sd(v.sub1) / mean(v.sub1);
print(cv2);

cv3 <- sd(v.sub2) / mean(v.sub2);
print(cv3);

# Question 5
# create CV vector
CV_vector <- c(cv1, cv2, cv3);

# Question 6
# find minimum vector
print(min(CV_vector));