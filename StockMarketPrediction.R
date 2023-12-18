#importing libraries
library(ggplot2)

#importing the dataset
data <- read.csv('TSLA.csv')

#removing any NA values
data <- na.omit(data)

#viewing dataframe
View(data)

#displaying the first 6 rows of data
head(data)

#summary
summary(data)

#visualizing dataset

#Open vs Close relation
ggplot()+
  geom_line(aes(x = data$Open,
                y = data$Close),
            colour = 'green') +
  ggtitle("Open vs Close") +
  xlab('Open') +
  ylab('Close')


#High vs Close relation
ggplot()+
  geom_line(aes(x = data$High,
                y = data$Close),
            colour = 'blue') +
  ggtitle("High vs Close") +
  xlab('High') +
  ylab('Close')


#Low vs Close relation
ggplot()+
  geom_line(aes(x = data$Low,
                y = data$Close),
            colour = 'magenta') +
  ggtitle("Low vs Close") +
  xlab('Low') +
  ylab('Close')


#relation of Close with all other variables
ggplot(data, aes(y = Close, colour = ''))+
  geom_line(aes(x = Open,
                colour = 'Open')) +
  geom_line(aes(x = High,
                colour = 'High')) +
  geom_line(aes(x = Low,
                colour = 'Low')) +
  ggtitle("dependent vs independent columns") +
  labs(x = "Independent variables",
       y = "Dependent variables(Close)") 


#splitting data into test and training set
split <- floor(nrow(data)*0.8)
training_set <- data[1:split,]
test_set <- data[split:nrow(data),]




#training the model
model <- lm(Close ~ Open + High + Low , data = training_set)

#summary of model with accuracy stats
summary(model)




#predicting with test set and model
predictedClose <- predict(model, test_set)
print(predictedClose)


#summary of predicted values

summary(predictedClose)


#summary of actual close
summary(test_set$Close)


#storing in result dataset and getting column for difference in predicted and actual value
result_set <- data.frame(test_set, 
                         predictedClose, 
                         test_set$Close - predictedClose)


#changing column name to Difference
colnames(result_set)[9] <- "Difference"



#plotting predicted vs real values

ggplot(result_set,aes(x = Open, colour = '')) +
  geom_line(aes(y = predictedClose,
                colour = 'predicted values')) +
  geom_line(aes(y = Close,
                colour = 'real values')) +
  ggtitle("Close vs Open Predicted values and real values") +
  labs(x = 'Open',
       y = 'Close')


  
#model accuracy
summary(model)

#RMSE
diffSquare <- result_set$Difference^2
rmse <- sqrt(mean(diffSquare))
print(paste("Root mean square error value: ",rmse))

#viewing resultant dataset
View(result_set)



