# Normalization of Data
x <- c(200, 300, 400, 600, 1000)

# (a) Min-max normalization
min_max <- (x - min(x)) / (max(x) - min(x))
print(min_max)

# (b) Z-score normalization
z_score <- (x - mean(x)) / sd(x)
print(z_score)

# Additional example from the question
# Minimum = 50000, Maximum = 100000
v <- 80000

normalized_value <- (v - 50000) / (100000 - 50000)
print(normalized_value)
