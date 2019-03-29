
#HOMEWORK 2 B 

#CHAPTER 5 
#11 a
#dbinom(5, 60, 2/6, log = FALSE)
#dbinom(5,10,.3) + dbinom(6,10,.3) + dbinom(7,10,.3) + dbinom(8,10,.3) + dbinom(9,10,.3) + dbinom(10,10,.3)
dbinom(size = 60, prob = 0.333333, x = 5) + dbinom(size = 60, prob = 0.333333, x = 6) + dbinom(size = 60, prob = 0.333333, x =7) + dbinom(size = 60, prob = 0.333333, x = 8) + dbinom(size = 60, prob = 0.333333, x = 9) + dbinom(size = 60, prob = 0.333333, x = 10)

#dbinom(size = 60, prob = 0.333333, x = 5:10)

#11b
1- pbinom(15, size=60, prob=0.3333333333)
1- pbinom(14, size=60, prob=0.3333333333)


#11c
1 - (pbinom(40, size=60, prob=0.3333333333))
1 - (pbinom(39, size=60, prob=0.3333333333))

#11e
dbinom(size = 60, prob = 0.333333, x = 20)

#12
pbinom(25, size=50, prob=0.65)

#CHAPTER 7
# 12
#using the binomial distribution: 
pbinom(18,size=25,prob=0.5)- pbinom(15,size=25,prob=0.5)

(1-pnorm(18,mean=12.5,sd=2.5)) - (1-pnorm(15,mean=12.5,sd=2.5))




###################
library(tidyverse)
moods <- read_csv("angry_moods.csv")
moods

angry_df <- data.frame(moods)

AE <- angry_df$Anger_Expression
AE
mean(AE)
sd(AE)

quantile(AE, c(.25, .50, .75), type =6)

qnorm(0.25, mean =(mean(AE)), sd = (sd(AE)))
qnorm(0.50, mean =(mean(AE)), sd = (sd(AE)))
qnorm(0.75, mean =(mean(AE)), sd = (sd(AE)))

gender <- angry_df$Gender

AO <- angry_df$Anger.Out
AO
library(sqldf)
men
men <- sqldf("SELECT COUNT(*) FROM angry_df WHERE gender = '1'")
women
women <- sqldf("SELECT COUNT(*) FROM angry_df WHERE gender = '2'")

men_ao <- sqldf("SELECT * FROM angry_df WHERE gender = '1'")
men_ao

AO_men_scr <- men_ao$Anger.Out
AO_men_scr
men_mean_ao <- mean(AO_men_scr)
men_mean_ao

women_ao <- sqldf("SELECT * FROM angry_df WHERE gender = '2'")
women_ao

AO_women_scr <- women_ao$Anger.Out
AO_women_scr
women_mean_ao <- mean(AO_women_scr)
women_mean_ao

men_mean_ao - women_mean_ao

# 25 
population_AO <- women_ao$Anger.Out + men_ao$Anger.Out
population_AO
population_mean_ao <- mean(population_AO)
population_mean_ao

# part b 

#Difference between means
## Calculate difference btween the means
#diff.means <- df.rats2["means",2]-
#  df.rats2["means",1]

SE = sqrt((var(AO_men_scr)/30)+(var(AO_women_scr)/48))
SE
var(AO_men_scr)
var(AO_women_scr)

#part C 
pnorm(mean = 2 ,sd = 1.04, 0.795)


#difference between men and women in anger out
#men_ao <- mean(sqldf("SELECT 'AO' FROM angry_df where gender ='1'"))
#mean(angry_df[["Anger.Out",gender = "1"]])

#HOMEWORK 3A
#####
preferred <- c(12, 7, 11,13, 10)
nonpreferred <- c(7,9,8,10,9)
mean(preferred)
mean(nonpreferred)

#step 1 - compute statistic 
statistic <- mean(preferred) - mean(nonpreferred)
statistic

sd(preferred)
sd(nonpreferred)
#step 2 - compute estimate of SE from statistics 
var1 <- (sd(preferred))*(sd(preferred))
var2 <- (sd(nonpreferred))*(sd(nonpreferred))
var1
var2

n <- 5
n

?cov

cor <- cor(preferred, nonpreferred)
#cov(mean(preferred), mean(nonpreferred))

cov <- var1+ var2 -(2 * cor * sd(preferred) * sd(nonpreferred) )
cov

Sm <- sqrt(cov/n)
Sm









MSE <- (var1 + var2) /2
MSE

SM1M2 <- sqrt((2*MSE)/n)
SM1M2

t <- SM1M2 /MSE
t
