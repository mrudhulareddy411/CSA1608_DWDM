#Tennis Players' Scores
scores <- c(12, 15, 18, 20, 22, 24, 25, 27,
            28, 30, 32, 35, 38, 40, 85)

# Display boxplot
boxplot(scores,
        main = "Tennis Players' Scores",
        ylab = "Points Scored",
        col = "lightblue")

# Identify outliers using the IQR method
Q1 <- quantile(scores, 0.25)
Q3 <- quantile(scores, 0.75)
IQR_value <- IQR(scores)

lower_limit <- Q1 - 1.5 * IQR_value
upper_limit <- Q3 + 1.5 * IQR_value

outliers <- scores[
  scores < lower_limit | scores > upper_limit
]

print("Lower limit:")
print(lower_limit)

print("Upper limit:")
print(upper_limit)

print("Outliers:")
print(outliers)
