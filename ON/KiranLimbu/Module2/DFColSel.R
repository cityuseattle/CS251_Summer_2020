cars <- mtcars

# select col 1,2 and 3
x <- cars[, c(1,2,3)];
print(head(x));

# select col mpg and cyl
y <- cars[, c('mpg', 'cyl')];
print(head(y));

# select all except col 1
z <- cars[, -1];
print(head(z));

# select all except col 1 and col 3
w <- cars[, -c(1, 3)];
print(head(w));