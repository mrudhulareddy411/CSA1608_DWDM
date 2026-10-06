age<-c(23,23,27,27,39,41,47,49,50,52,54,54,56,57,58,58,60,61)
fat<-c(9.5,26.5,7.8,17.8,31.4,25.9,27.4,27.2,31.2,34.6,42.5,28.8,
       33.4,30.2,34.1,32.9,41.2,35.7)
mean(age)
mean(fat)
#boxplot
boxplot(age,fat,
        names=c("age","fat"),
        main="comparision of age and fat",
        ylab="values",
        col=c("pink","yellow"))

barplot(rbind(age, fat),
        beside = TRUE,
        main = "Age and Fat",
        xlab = "Observations",
        ylab = "Values",
        col = c("pink", "yellow"),
        legend.text = c("Age", "Fat"))
plot(age, fat,
     main = "Age vs Fat",
     xlab = "Age",
     ylab = "Fat",
     pch = 19,
     col = "blue")
lines(age, fat, col = "black")
