cars <- mtcars

first.ten.rows <- cars[1:10,] # same as head(cars, 10)
print(first.ten.rows);

# Conditinal Selection
sub1 <- cars[(cars$mpg > 20 & cars$cyl > 4), ]; # Select rows that meets both condition
print(sub1);

sub2 <- subset(cars, carb > 3 & cyl > 4);
print(sub2);

# Select all except row #2
everything.but.row.two <- cars[-2,];
print(everything.but.row.two);

# Challenge
everything.but.row.two <- cars[-2,];
everything.but.row.two <- subset(everything.but.row.two, cyl == 6);
print(everything.but.row.two);