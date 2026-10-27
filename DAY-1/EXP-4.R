# Smoothing by Binning
data <- c(11, 13, 13, 15, 15, 16, 19, 20,
          20, 20, 21, 21, 22, 23, 24, 30,
          40, 45, 45, 45, 71, 72, 73, 75)

# Divide data into 5 equal-width bins
bin_indices <- cut(data, breaks = 5)

# (a) Smoothing by bin mean
mean_smooth <- tapply(data, bin_indices, mean)
print(mean_smooth)

# (b) Smoothing by bin median
median_smooth <- tapply(data, bin_indices, median)
print(median_smooth)

# (c) Smoothing by bin boundaries
boundary_smooth <- tapply(
  data, bin_indices,
  function(x) c(min(x), max(x))
)
print(boundary_smooth)
