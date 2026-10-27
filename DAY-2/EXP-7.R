#  Water Dataset
# Install once if required:
# install.packages("boot")

library(boot)
data(water)

# View the dataset
head(water)

# Check linear relationship
plot(water$hardness, water$mortality,
     main = "Hardness vs Mortality",
     xlab = "Water Hardness",
     ylab = "Mortality",
     pch = 19,
     col = "blue")

# Correlation
cor(water$hardness, water$mortality)

# Linear regression model
model <- lm(mortality ~ hardness, data = water)
summary(model)

# Draw regression line
abline(model, col = "red", lwd = 2)

# Predict mortality for hardness = 88
new_data <- data.frame(hardness = 88)
predict(model, newdata = new_data)
