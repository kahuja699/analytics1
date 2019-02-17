
women
nrow(women)
sample(1:10,size = .7*10)
karuna=sample(1:nrow(women),size=.7* nrow(women))
karuna
women[1,]
women[1:5,]
train=women[karuna,]
test=women[-karuna,]

fit1 = lm (weight~height,data = train)
summary(fit1)
p4=predict(fit1,newdata = test, type = 'response')
p4=predict(fit1,newdata = test)
cbind(p4,actual=test$weight, height=test$height)
