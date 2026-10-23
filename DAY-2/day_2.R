
data<-c(11,13,13,13,15,15,16,19,20,20,20,21,21,24,30,40,40,40,45,45,72,73,75)
bins<-4
# Sort the data
data <- sort(data)

#smoothing by equal width
bin_indices<-cut(data,bins)
bin_indices
mean_smooth<-tapply(data,bin_indices,mean)
print(mean_smooth)


#smoothing by equal frequency 
# Divide data into equal-frequency bins
bin_number <- ceiling(seq_along(data) * bins / length(data))
bin_data <- split(data, bin_number)
# Bin smoothing by mean
mean_smooth <- sapply(bin_data, mean)
print(mean_smooth)

