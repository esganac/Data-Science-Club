library(readr)
test <- read_csv("~/Documents/R/test.csv")
train <- read_csv("~/Documents/R/train.csv")

# develop the model on the training data and use it to predict the OverallQual on test data
# Build the model on training data
lmMod<- lm(SalePrice~YearBuilt+YearRemodAdd, data= train)
pred<- predict(lmMod, test) # predict SalesPrice on test data

# review diagnostic measures
summary(lmMod)

# calculate prediction accuracy and error rates
actuals_preds<- data.frame(cbind(actuals=test$YearBuilt+test$YearRemodAdd, predicteds=pred))
correlation_accuracy<- cor(actuals_preds)
correlation_accuracy
head(actuals_preds)

# submission
df<- data.frame(Id= test$Id, SalePrice= actuals_preds$predicteds)
df[df< 0]<- 0
write.csv(df, file="submissionfile4.csv",row.names = FALSE)

