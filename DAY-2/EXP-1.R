#  Covariance and Correlation

# Preference data from the question
A <- c(18, 2, 20)
B <- c(22, 28, 10)
C <- c(20, 40, 40)

# Sample covariance between B and C
cov(B, C)

# Sample covariance matrix
preferences <- data.frame(A, B, C)
cov(preferences)

# Sample correlation between B and C
cor(B, C)

# Sample correlation matrix
cor(preferences)
