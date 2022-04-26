heart_rate <- c(75, 80, 62, 97, 107, 59, 76, 83, 84, 69)
summary(heart_rate)
var(heart_rate)

#Import the dataset
testData <- read.csv("testSeries.csv", header = TRUE)
str(testData)


plot.ts(testData)


testData1 <- testData 

testData1[testData1 == "Australia"] <- "1"
testData1[testData1 == "England"] <- "2"
testData1[testData1 == "South Africa"] <- "3"
testData1[testData1 == "West Indies"] <- "4"
testData1[testData1 == "New Zealand"] <- "5"
testData1[testData1 == "India"] <- "6"
testData1[testData1 == "Pakistan"] <- "7"
testData1[testData1 == "Sri Lanka"] <- "8"

#Data Visualization
ggplot(testData, aes(Team, colour = Won)) +
  geom_freqpoly(binwidth = 1) + labs(title="Winning Probability by Country")


install.packages("ggpubr")


hist(testData1$Won, cex.main = 0.75)


