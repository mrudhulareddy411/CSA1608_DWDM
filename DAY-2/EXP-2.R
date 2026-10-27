#Equal-Frequency Binning and Smoothing

prices <- c(1, 1, 5, 5, 8, 18, 20, 20, 20,
            20, 20, 20, 20, 21, 21, 21, 21,
            25, 25, 25, 25, 25, 28, 28, 30,
            10, 10, 10, 10, 12, 14, 14, 14,
            15, 15, 15, 15, 15, 15, 18, 18,
            18, 18, 18)
# Sort the data
prices <- sort(prices)

# Divide into 3 equal-frequency bins
num_bins <- 3
bin_id <- ceiling(seq_along(prices) * num_bins / length(prices))
bins <- split(prices, bin_id)

print("Equal-frequency bins:")
print(bins)

# Smoothing by bin means
mean_smooth <- lapply(bins, function(x) rep(mean(x), length(x)))
print("Smoothing by bin means:")
print(mean_smooth)

# Smoothing by bin boundaries
boundary_smooth <- lapply(bins, function(x) {
  lower <- min(x)
  upper <- max(x)
  ifelse(abs(x - lower) <= abs(x - upper), lower, upper)
})
print("Smoothing by bin boundaries:")
print(boundary_smooth)

# Histogram
hist(prices,
     main = "Histogram of All Electronics Prices",
     xlab = "Price",
     ylab = "Frequency",
     col = "lightblue")
