# return frist 6 line
df <- mtcars
print(head(df));

# return first line
rowdf <- df[1,];
print(rowdf);

# return first line as vector
vrow <- as.numeric(as.vector(df[1,]));
print(vrow);