

###################
library(tidyverse)
moods <- read_csv("angry_moods.csv")
moods

angry_df <- data.frame(moods)

#CHAPTER 10
# 24
AE <- angry_df$Anger_Expression
AE
mean(AE)
sd(AE)

AO <- angry_df$Anger.Out
AO

mean(AO)

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

gender <- angry_df$Gender
gender
# step 1: estimate SE
sd(AO_women_scr)
sd(AO_men_scr)

# compute estimate of SE from statistics 
var_women <- (sd(AO_women_scr))*(sd(AO_women_scr))
var_men <- (sd(AO_men_scr))*(sd(AO_men_scr))
var_women
var_men

#find MSE
MSE <- (var_women + var_men) /2
MSE

sse(AO_women_scr, AO_men_scr)
?sse

t.test(AO ~ gender, df=length(AO-2), alternative=c("two.sided"), var.equal =TRUE, conf.level = 0.99)

#library(apricom)


#mean of men + women 
n <- (39+40)/2
n
SM1M2 <- sqrt((2*MSE)/n)
SM1M2

####
0.795-(2.642*0.956)
0.795+(2.642*0.956)
##############

#25
sports <- angry_df$Sports
sports

AI <- angry_df$Anger.In

athletes <- sqldf("SELECT * FROM angry_df WHERE sports = '1'")
nonathletes <- sqldf("SELECT * FROM angry_df WHERE sports = '2'")
athletes
nonathletes

anger_in_athletes <- athletes$Anger.In
anger_in_athletes
anger_in_nonathletes <- nonathletes$Anger.In
anger_in_nonathletes

# step 1: estimate SE
sd(anger_in_athletes)
sd(anger_in_nonathletes)

# step 1.5: compute estimate of SE from statistics 
var_athletes <- (sd(anger_in_athletes))*(sd(anger_in_athletes))
var_nonathletes <- (sd(anger_in_nonathletes))*(sd(anger_in_nonathletes))
var_athletes
var_nonathletes

# Step 1.6: find MSE
MSE_sports <- (var_athletes + var_nonathletes) /2
MSE_sports

# Step 1.7: var diff and divide by mean of athletes + non athletes
# of  athletes: 
athlete_count <- sqldf("SELECT COUNT(*) FROM angry_df WHERE sports = '1'")
athlete_count
nonathlete_count <- sqldf("SELECT COUNT(*) FROM angry_df WHERE sports = '2'")
nonathlete_count

s <- (25+53)/2
s

SM1M2_sports <- sqrt((2*MSE_sports)/s)
SM1M2_sports

# step 2: find mean difference between athletes and non athletes
mean(anger_in_athletes)
mean(anger_in_nonathletes)

sports_mean_dif <- mean(anger_in_nonathletes) -  mean(anger_in_athletes)
sports_mean_dif

# step 3: find the  tcl 
df_sports <-  (25-1) +  (53-1)
df_sports

# step 4: find  the upper and lower limits
lower <- sports_mean_dif - (1.992 * SM1M2_sports)
lower
upper <-  sports_mean_dif + (1.992 * SM1M2_sports)
upper

t.test(AI ~ sports, df=length(AI-2), alternative=c("two.sided"), var.equal =TRUE, conf.level = 0.95)


## 26
#step 1:  Find correlation between AO and Control Out 
AO

CO<- angry_df$Control.Out
CO

cor_anger <- cor(AO, CO)
cor_anger

# step 1.5: convert r to z (standardize)
#install.packages("standardize")
#library(standardize)
#standardize(cor_anger, centerFun = 0)

#standardize(cor(AO, CO))

#Z <- X-M / sd 

#step 2: compute confidence intervals in terms of z
N_3 <- 25+53
SE_3 <- 1 / sqrt(N_3 -3)
SE_3

#find the mean and se
mean(AO)
sd(AO)

mean(CO)
sd(CO)

CO_AO_meandif <- mean(CO)-mean(AO)

#find  the upper and lower limits
lower_2 <- CO_AO_meandif - (-0.667 * SE_3)
lower_2
upper_2 <-  CO_AO_meandif + (-0.667 * SE_3)
upper_2

-0.667-(1.96*SE_3)
-0.667+(1.96*SE_3)



## CHAPTER 12 
athletes
nonathletes

#21 
athletes_C0 <- athletes$Control.In
athletes_C0
nonathletes_C0 <- nonathletes$Control.In
nonathletes_C0

?t.test
t.test(nonathletes_C0,athletes_C0)

#22
AO <- angry_df$Anger.Out
AI<- angry_df$Anger.In
AO
AI
t.test(AO,AI, paired=TRUE)
cor.test(AO, AI)



##CHAPTER 13

