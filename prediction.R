######################################## Prediction Using Supervised ML ###############################################

#GRIP : The Sparks Foundation
#Data Science and Business Analytics Intern
# Task1 : Prediction Using Supervised ML
#Predict the percentage of Student Based on Number of Hours Studied (Simple Linear Regression)
# ========= Author: Kolavennu Jagadeesh =======================

install.packages("ggplot2")

library(ggplot2)

prediction_data=read.csv(file.choose())  #Uploading data in R Studio.
prediction_data    #Displaying the data for linear regression.

reg_model <- lm(Scores~Hours,data=prediction_data)  #Creating Regression Model.
reg_model

print(summary(reg_model)) #Summary of Regression Model

#Plot the regression model in R by using ggplot

ggplot(reg_model,aes(Hours,Scores))+ 
  geom_point()+ geom_smooth(method =lm)+
  labs(title="Hours Studied vs Scores obtained")+
  theme_bw()+
  theme(plot.title = element_text(hjust = 0.5))

# Creating a Prediction Parameter.
New_data <- data.frame(Hours = 9.25 ) #Prediction the percentage of Student who studies for 9.25 hours
New_data

#Linear Prediction Model
Prediction <- predict(reg_model,newdata = New_data)
Prediction

#So it shows that a student who studies for 9.25 hours will score 92.90985 Percentage
