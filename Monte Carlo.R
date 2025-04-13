sample(c(1:4),4,replace=FALSE,prob=c(rep(.25,4))) #default is replace=False. 
sample(c(1:4),4,replace=FALSE,prob=c(rep(.25,4)))
sample(c(1:4),5,replace=TRUE,prob=c(rep(.25,4))) #Can't have a higher sample than the number of samples especially without replacement. Thus, we change it to TRUE
sample(c(1:4),5,replace=TRUE,prob=c(rep(.25,4)))
sample(c("boy","girl"),3,replace=TRUE)
sample(c("boy","girl"),3,replace=TRUE)

#What is we sum 
sum(sample(c("boy","girl"),3,replace=TRUE)=="girl")

sum(sample(c("boy","girl"),3,replace=TRUE)=="girl")>=1 #interested in at least 1

#Don't give true or false, give me a number:
sum(sum(sample(c("boy","girl"),3,replace=TRUE)=="girl")>=1) #0 or 1 if it's true or false

count<-0 
#Want to make a for loop:
for (i in 1:1000){count<-count+sum(sum(sample(c("boy","girl"),3,replace=TRUE)=="girl")>=1)}
count/1000

#Above is the given probability. Which is = 1-P("no girls") = 1-(1/2)^3=7/8 which his approximately .75
#Q2: What is the area under the function y=x^2 on (0,1)
#The problem is to get the area under the curve. Take into account dart example on box, which were random over the box. Then, if they were random, the area under the curve should be proportional to everywhere else. 
#we want to use a different function, uniform random number:
runif(5)

#We can take first group as "x" and second group as "y"
#We take these numbers as ordered pairs. 
x<-runif(5)
y<-runif(5)
x

y

y<-x^2 

#3 of five fell bellow the curve. 
sum(y<x^2)
runif(5)<runif(5)^2
sum(runif(5)<runif(5)^2)


#Turning it to a sample probability
sum(runif(5)<runif(5)^2)/5

sum(runif(5000)<runif(5000)^2)/5000

#If we take the integral from 0 to 1 x^2dx, we get x^3/3 which is 1/3 and around .3286 which is very close. 
  