A <- c(76, 35, 47, 64, 95, 66, 89, 36, 84,76, 35, 47, 64, 95, 66, 89, 36, 84)
B <- c(51, 56, 84, 60, 59, 70, 63, 66, 50,51, 56, 84, 60, 59, 70, 63, 66, 50)
mean_a=mean(A)
print(mean_a)
mean_b=mean(B)
print(mean_b)

median_a=median(A)
print(median_a)
median_b=median(B)
print(median_b)

range_a=max(A) - min(A)
print(range_a)
range_b=max(B) - min(B)
print(range_b)

if(mean_a>mean_b) {
print("Class A has higher mean")
}else if (mean_b>mean_a) {
print("Class B has higher mean")
}else {
print("Both classes have equal mean")
}
if(median_a > median_b) {
print("Class A has higher median")
}else if(median_b>median_a) {
print("Class B has higher median")
}else {
print("Both classes have equal median")
}
if(range_a>range_b) {
print("Class A has higher range")
}else if(range_b>range_a) {
print("Class B has higher range")
}else {
print("Both classes have equal range")
}
# Boxplot
boxplot(A, B,
        names=c("Class A", "Class B"),
        main="Comparison of Class A and Class B",
        xlab="Classes",
        ylab="Marks",
        col=c("pink","yellow"))
