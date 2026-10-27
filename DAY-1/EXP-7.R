# Number of Pencils
pencils <- c(9, 25, 23, 12, 11, 6, 7, 8, 9, 10)

# Mean
mean(pencils)

# Median
median(pencils)

# Mode
mode_value <- names(table(pencils))[
  table(pencils) == max(table(pencils))
]
print(mode_value)
