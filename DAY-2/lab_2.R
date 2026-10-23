ag <-c(23, 23, 27, 27, 39, 41, 47, 49, 50,52, 54, 54, 56, 57, 58, 58, 60, 61)
v<-35
min_max<-(v-min(age))/(max(age)-min(age))
print(min_max)
#Z-Score Normalization
z_score<-(v-mean(age))/12.94
print(z_score)