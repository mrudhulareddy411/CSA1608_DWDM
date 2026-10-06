#age, frequency
age<-c(5,15,20,50,80,110)
frequency<-c(200,450,300,1500,700,44)
median(age)
median(frequency)
#printing output in format
medA=median(age)
medF=median(frequency)
cat("median of age is: ",medA," and median of frequency is:",medF)
mean(age)
mean(frequency)
meanA=mean(age)
meanF=mean(frequency)
cat("mean of age is:",meanA,"Mean of frequency is:",meanF)
mode(age)
mode(frequency)
modeA=mode(age)
modeF=mode(frequency)
cat("mode of age is:",modeA,"and mode of frequency is:",modeF)


