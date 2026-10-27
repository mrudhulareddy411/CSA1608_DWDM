# Normalization
v <- c(23, 23, 27, 27, 39, 41, 47, 49, 50,
       52, 54, 54, 56, 57, 58, 58, 60, 61)

# Value to normalize
value <- 35

# (i) Min-max normalization
min_max <- (value - min(v)) / (max(v) - min(v))
print(min_max)

# (ii) Z-score normalization
m <- mean(v)
s <- 12.94
z_score <- (value - m) / s
print(z_score)

# (iii) Decimal scaling normalization
j <- ceiling(log10(abs(value) + 1))
decimal_scaling <- value / (10^j)
print(decimal_scaling)
