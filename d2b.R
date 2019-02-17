#graphs0
mtcars
names(mtcars)
table(mtcars$cyl)
table(mtcars$cyl,mtcars$am,mtcars$gear)
mtcars$mpg
#continuous data- histogram, boxplot
hist(mtcars$mpg)
boxplot(mtcars$mpg, horizontal = T)
boxplot(mpg~gear,data=mtcars, col=1:3)
students
t2= table(students$gender)
barplot(t2)
title('this is bar plot',sub = 'subtitle')
pie(t2)
title('this is bar plot',sub = 'subtitle')
