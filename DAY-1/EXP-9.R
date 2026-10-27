# Partitioning Marks
marks <- c(55, 60, 71, 63, 55, 65, 50, 55,
           58, 59, 61, 63, 65, 67, 71, 72, 75)

num_bins <- 3

# Sort marks
sorted_marks <- sort(marks)
print(sorted_marks)

# (a) Equal-frequency (equi-depth) partitioning
equal_frequency_bins <- split(
  sorted_marks,
  rep(1:num_bins, each = length(sorted_marks) %/% num_bins,
      length.out = length(sorted_marks))
)

print("Equal-frequency bins:")
print(equal_frequency_bins)

# Histogram for equal-frequency partitioning
hist(sorted_marks,
     breaks = c(49, 59, 66, 76),
     main = "Equal-Frequency Partitioning",
     xlab = "Marks",
     ylab = "Frequency",
     col = "lightblue",
     right = TRUE)

# (b) Equal-width partitioning
equal_width_bins <- cut(marks, breaks = num_bins)
print("Equal-width bins:")
print(split(marks, equal_width_bins))

# Histogram for equal-width partitioning
hist(marks,
     breaks = seq(min(marks), max(marks),
                  length.out = num_bins + 1),
     main = "Equal-Width Partitioning",
     xlab = "Marks",
     ylab = "Frequency",
     col = "lightgreen",
     include.lowest = TRUE)
