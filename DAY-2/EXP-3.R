# Compare Class A and Class B

class_A <- c(76, 35, 47, 64, 95, 66, 89, 36, 84)
class_B <- c(51, 56, 84, 60, 59, 70, 63, 66, 50)

# Mean
mean(class_A)
mean(class_B)

# Median
median(class_A)
median(class_B)

# Range
range(class_A)
range(class_B)

# Range difference
diff(range(class_A))
diff(range(class_B))

# Boxplot
boxplot(class_A, class_B,
        names = c("Class A", "Class B"),
        main = "Comparison of Class Marks",
        xlab = "Classes",
        ylab = "Marks",
        col = c("lightblue", "lightgreen"))
