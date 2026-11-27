
data <- c(1,1,5,5,5,5,5,8,8,10,10,10,10,
12,14,14,14,15,15,15,15,15,18,18,18,18,
18,18,18,18,20,20,20,20,20,20,20,21,21,
21,21,25,25,25,25,25,28,28,30,30)
bins <- split(data, ceiling(seq_along(data)/3))
print("Equal frequency bins:")
print(bins)
mean_bins <- lapply(bins, function(x) {
  rep(round(mean(x), 2), length(x))
})
print("Smoothing using bin means:")
print(mean_bins)
boundary_bins <- lapply(bins, function(x) {
  low <- min(x)
  high <- max(x)
  ifelse(abs(x-low) <= abs(x-high), low, high)
})
print("Smoothing using bin boundaries:")
print(boundary_bins)
hist(data, main="Histogram of Prices",
     xlab="Price", ylab="Frequency",
     col="lightblue", breaks=10)
