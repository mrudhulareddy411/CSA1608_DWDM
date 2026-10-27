# Boxplot using mtcars
data(mtcars)

# Convert cylinders into a categorical variable
mtcars$cyl <- factor(mtcars$cyl)

# Boxplot
boxplot(mpg ~ cyl,
        data = mtcars,
        main = "MPG by Number of Cylinders",
        xlab = "Number of Cylinders",
        ylab = "Miles Per Gallon (MPG)",
        col = c("lightblue", "lightgreen", "lightpink"))
