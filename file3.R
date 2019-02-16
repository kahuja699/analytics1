#my first r file
#control by starting#
women
#coment+enter to execute command
?women
?mean
#?before functn to seek help
mtcars
?mtcars
mean(mtcars$mpg)
name(mtcars)
mean(mtcars$hp)
colMeans(mtcars)
romMeans(mtcars)
?head(mtcars)
tail(mtcars,1)   #last row
hist(mtcars$mpg)
hist(mtcars$mpg, break=3)

#vector
x=c(1,2,5,7)
x
class(x)
x1=c(2l, 8l)
class(x1)
class(mtcrs)
x3=c("a","b","karuna")
class(x3)
x4=c(true,false,t,f)
x4
x5=1:10000
x5
x6<-2  #another way of assign ; other is =
x7 = rnorm(1000)
length(x7)
mean (x7)
sd(x7)
plot(density(x7))
hist(x7)
hist(x7,freq=F)
points(density(x7))
hist(x8)
points(density(x8))
(x8=rnorm(100, mean=60, sd=10))
library(e1071)
kurtosis(x8)
skewness(x8)


x9 = runif(100 , 30,  90)
?runif
x9
trunc(x9)
round(x9,1)
floor(x9)
ceiling(x9)
x10 = ceiling(x9)
x10
x9
x10
mean(x10)
median(x10)
sort(x10)
sort(x10, decreasing=T)
x10(x10>60)
x10
x10 [1:10]
x10[20:30]
x10[ -c(1:20)]
x10[c(1,5,7)]
x10

#matrices
m1=matrix(1:24 , nrow=6)
m1
dim(m1)
m2 = matrix(1:56, ncol=8)
m2
m3 = matrix (1:24, ncol=6, byrow= T)
m3
colnames(m3)=month.abb[1:6]
m3
rownames(m3)=paste('product',1:4, sep='_')
m3
rowMeans(m3)
colMeans(m3)
rowSums(m3)
colSums(m3)
m3
m3[ , 1:2]
m1
m1[ , 1:2]
m3
m3[ , 1:2]
colMeans(m3[c(1,3),])
m3
max(m3)
min(m3)


#before comma stands for row and after column


#data,frame
n=30
(rollno=paste('F',1:30, sep='-'))
(sname=paste('student',1:30, sep='&'))
  
set.seed(1234)
(gender= sample(c('M','F'),size=n, replace=T, prob=c(.7,.3)))
(t1=table(gender))
prop.table(t1)

(college = sample(c('SRCC','FMS','IIM'),size=n,replace=T, prob = c(.4,.3,.3)))
(t2=table(college))
prop.table(t2)
(marks1 = round(rnorm(n=n,mean=60, sd=10),0))
?rnorm
(marks2 = round(rnorm(n=n,mean=55, sd=15),0))
rollno;sname;gender;college;marks1;marks2
length(gender)

students= data.frame(rollno,sname,gender,college,marks1,marks2)
students
head(students)
students$rollno
students[,c(5:6)]
students[,c('sname','marks1','marks2')]
str(students)
summary(students)
quantile(students$marks1,probs=c(0,.25,.5,.75,1))
quantile(students$marks1, probs=seq(0,1,.25))
?seq
seq(from=1,to=100,by=3)
summary(students)
str(students)
students$rollno=as.character(students$rollno)
students$sname=as.character(students$sname)
str(students)
head(students)


write.csv(students,'fms.csv',row.names = F)
students2 = read.csv('fms.csv')
head(students2)
(students3 = read.csv(file.choose()))


#students
head(students)
library(dplyr)
students[students$marks1>60,]
students[students$gender=='F',]
students[students$gender=='F'|students$college== 'srcc',]
#highest from all colleges
students %>% filter(gender=='M' & marks1>60)
students%>%group_by(gender) %>% summarise(mean(marks1), mean(marks2))
students %>% group_by(college) %>% summarise(max(marks1),max(marks2))
students %>% filter(college=='fms') %>% select(marks1, marks2))