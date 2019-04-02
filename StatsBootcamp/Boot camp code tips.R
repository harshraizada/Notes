##Popular Functions##
#use the ? to get help,ex. ?hist
#if that doesn't work, try ex. ??subset
#click on the House graphic below the word "Plots" for resources

library("stats")
library("graphics")

#basic functions
mean(moods$`Anger-Out`)
median(moods$`Anger-Out`)
sd(moods$`Anger-Out`)
var(moods$`Anger-Out`)
sqrt(49)
cor(moods$`Anger-Out`,moods$`Anger-In`)

##Create a new column in a data set
moods$AIAO<-moods$`Anger-In` - mean(moods$`Anger-In`)
View(moods) #Displays the data set
#When running regression for the first time, create all of the columns and 
#go through each step to see how the process works 


#Normal Distribution 
#pnorm takes the z-score (# of std deviations from the mean) and gives the probabiity  
pnorm(2)  #assumes a normal dist with mean=0, std=1 two tailed
pnorm(2,lower.tail = FALSE)  #opposite side of the distribution

#OR you can enter the value along with the mean and the std dev
pnorm(42,50,8)

#qnorm is the opposite, it takes the probability and gives you the std dev
qnorm(.02275) #std dev below the mean
qnorm(.02275, lower.tail = FALSE) #std dev above the mean

##pbinom and qbinom work the same way for the binomial distribution

##Subset a data set###
#base package - subset()
males<-subset(moods,moods$Gender==1) #this will create a new data.table for males 

#lm() stats package - fits linear models
moods.lm<-lm(moods$Anger_Expression ~ moods$`Anger-Out`)  #finds the linear model
moods.sum<-summary(moods.lm) #gives the summary of that model
moods.sum$coefficients  #separates out the Coefficients table in the summary
moods.sum$coefficients[2,1] #pulls out the beta coefficient for Anger-Out
#Avoid hard coding data as much as possible. If you plan to use the output of a formula 
#in another place, then assign it a name
intercept<-moods.sum$coefficients[1,1]
beta<-moods.sum$coefficients[2,1]
X<-10
Yhat<-X*(beta)+intercept
Yhat

########Session 2##############
## How to access the results of a function ##

data("mtcars")
View(mtcars)
attach(mtcars)
hist(mpg)
h<-hist(mpg)
h
sum(h$density)
h$breaks[1]
sum((h$breaks[2]-h$breaks[1])*h$density)

cor(mpg,cyl)
cor.test(mpg,cyl)
c<-cor.test(mpg,cyl)
names(c)
c$parameter
c$statistic

########## Binomial Demo ###############
graph <- function(n,p){
  x <- dbinom(0:n,size=n,prob=p)
  barplot(x)
}
par(mfcol=c(1,1))
mapply(graph,50,.6)


graph <- function(n,p){
  x <- dbinom(0:n,size=n,prob=p)
  barplot(x,names.arg=0:n, main=sprintf(paste('bin. dist. ',n,p,sep=':')))
}
par(mfcol=c(1,4))
mapply(graph,20,seq(0.1,1,0.25))


######### Binomial Sampling Dist ################
par(mfcol=c(1,1))
sep<-function(pi,N){
  y<-sqrt((pi*(1-pi))/N)
  plot(y)
}
sapply(sep,seq(.1,1,by=.01),20)

###Binomial Dist Ex######
pbinom(1,10,.3)  #prob of 1 or fewer out of 10
dbinom(1,10,.3)  #prob of just 1 out of 10

pi <- .5
n<-seq(1,10,by=1)
N=10
sep<-function(n,N,pi){
  dbinom(n,N,pi)
}
sep2<-sapply(n,N,pi,FUN=sep)
barplot(sep2, col="red")

########### Student t-Test ############
#Tails, visualize which side, or both, that you need
pt(2.78,32,lower.tail = F)  #This is ONE TAIL ONLY
pt(2.78,32,lower.tail = T)  #Everything below the t-value
1-pt(2.78,32,lower.tail = F) #Same as 1st one

pt(2.78,32)  #default is the same as T, 
1-pt(2.78,32,lower.tail = T)

pt(2.78,32,lower.tail = F)*2  #Two tails - see calculator

n<-seq(-3.78,3.78,by=.01)
df <- 2
t <- seq(-3.78, 3.78, by =.01)
plot(dnorm(n),type = "l", main = "t-Test Density", ylab="density")
lines(dt(t,df),  col="red")
lines(dt(t,14),col="purple")
legend("topright", legend=c("Normal","t-dist df=14","t-dis df=2"),
       col=c("black","purple", "red"), lty=1:1, cex=0.8)



########## Normal Distribution #########
1-pnorm(1)  #based on a mean=0, sd=1 p=.5 - Below 1
pnorm(8,8,1)  #based on mean = 8, sd=1 p = .5 - Below 8
pnorm(6,8,1) #based on mean=8, sd=1  2 sd=1.95
pnorm(6,8,1)*2  #two tails

qnorm(.02275,8,1)  #opposite of pnorm

