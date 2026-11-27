
x <- c(2.5, 3.1, 2.0, 3.6, 2.8)
minmax <- (x-min(x))/(max(x)-min(x))
zscore <- (x-mean(x))/sd(x)
mad <- mean(abs(x-mean(x)))
mad_norm <- (x-mean(x))/mad
decimal <- x/10
print("Min-Max Normalization")
print(round(minmax, 3))
print("Z-score Normalization")
print(round(zscore, 3))
print("MAD Normalization")
print(round(mad_norm, 3))
print("Decimal Scaling")
print(round(decimal, 3))
