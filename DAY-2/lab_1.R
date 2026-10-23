data <- c(5, 10, 11, 13, 15, 35, 50, 55, 72, 92, 204, 215)
bins <- 3
data <- sort(data)
#smoothing by equal width
bin_indices<-cut(data,bins)
bin_indices
mean_smooth<-tapply(data,bin_indices,mean)
print(mean_smooth)
#smoothing by equal frequency 
bin_number<-ceiling(seq_along(data)* bins/length(data))
bin_data<-split(data, bin_number)
mean_smooth<-sapply(bin_data, mean)
print(mean_smooth)
