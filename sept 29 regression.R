# http://r-statistics.co/Linear-Regression.html
# https://www.kaggle.com/c/house-prices-advanced-regression-techniques


ead(cars)
plot(cars$speed, cars$dist)

# correlation of 1 is perfect, but doesn't happen in real data
cor(cars$speed, cars$dist)

# linear model
# what we expect for distance taking in speed in
linear.mod = lm(dist ~ speed, data = cars) 
# more stars more related
summary(linear.mod)


dim(cars)
# training data- split it up 80% points to be train data
# 20% testing data


# Create Training and Test data -
set.seed(100) # setting seed to reproduce results of random sampling
trainingRowIndex <- sample(1:nrow(cars), 0.8 * nrow(cars)) # row indices for training data
trainingData <- cars[trainingRowIndex,] # model training data
testData <- cars[-trainingRowIndex,] # test data

lmMod <- lm(dist ~ speed, data = trainingData)
dsitPred<- predict(linear.mod, testData)

actuals_preds <- data.frame(cbind(actuals = testData$dist, predicteds = distPred)) # make actuals_predicteds dataframe.

predict(linear.mod,)