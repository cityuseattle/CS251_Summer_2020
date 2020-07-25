df <- mtcars;
print(head(df)); #prints first 6 rows of the data frame

#returns the first line of the data frame
rowdf <- df[1,];
print(rowdf);
#Run code

#to get first line a row as a vector, use following
vrow <- as.numeric(as.vector(df[1,]));
print(vrow);
