#modeling
#linear regression - simple,multiple
#y~ x1 (SLR) ; y~x1+x2...(MLR)
#Y - DEPENDENT VARIABLE, X-INDEPENDENT

head(women)
#y-weight, x= height
cor(women$height,women$weight) #strength and direction of rshp
cov(women$height,women$weight)  #direction+ve
plot(women$height,women$weight)

fit1 =lm(weight~height, data=women)
summary(fit1)
#F stats p value <<0.05: linear model exist
#atleast 1 independent variable is significant in predicting dependent variable
#multiple Rsquare = .991 coeff of determination
#multiple when you have 1 indendent variable, othervise take adjusted rsq
#99% of the variation in Y is explained by Xs
#Y= mX+ C : Y = -87 + 3.45* height
range(women$height)
#only do interpolation not exterpoltion
women$weight
women$height
(y = -87.51667 + 3.45 * women$height)
fitted(fit1)   #predicted values are actual heights
residuals(fit1)  #difference between predicted and actual weights

summary(fit1) #summary of  the model
summary(residuals(fit1))
(newdata1 = data.frame(height=c(60.4,59.9,77)))
?predict
(p1 = predict(fit1))