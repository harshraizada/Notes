#HW 4 
#ANGELA TENG

#CHAPTER 14 
#6 
X <- c(2,4,4,5,6)
Y <- c(5,6,7,11,12)

cor(X,Y)
reg <- lm(X ~ Y)

#confidence interval for the slopw
summary(reg)
#the 95% confidence interval for the slope is the estimated coefficient 0.4330, +- 2 SD, 0.1145

confint(reg, 'Y', level = 0.95)


#
Pre <- c(59,
         52,
         44,
         51,
         42,
         42,
         41,
         45,
         27,
         63,
         54,
         44,
         50,
         47,
         55,
         49,
         45,
         57,
         46,
         60,
         65,
         64,
         50,
         74,
         59)
Post <- c(56,
          63,
          55,
          50,
          66,
          48,
          58,
          36,
          13,
          50,
          81,
          56,
          64,
          50,
          63,
          57,
          73,
          63,
          46,
          60,
          47,
          73,
          58, 
          85,
          44)

pre_post_reg <- lm(Pre ~ Post)
pre_post_reg 

predicted_post <- 0.3628*43 + 30.8634
predicted_post

3.0/2.5
12-(1.2*10)


#19 
sat <- read.csv('sat.csv')
SAT <- data.frame(sat)
SAT

HS_GPA <- SAT$high_GPA
HS_GPA

college_GPA <- SAT$univ_GPA
college_GPA

lm(HS_GPA ~ college_GPA)
plot(HS_GPA,college_GPA,  col = "blue", main = "COLLEGE GPA PLOTTED AGAINST HS GPA", xlab = "HS GPA", ylab = "COLLEGE GPA")
abline(lm(HS_GPA ~ college_GPA))


0.9006*2.2+ 0.2191
0.9006*4.0+ 0.2191

anger <- read.csv('angry_moods.csv')
anger

AO <- anger$Anger.Out
CO <- anger$Control.Out

#reg2 <- lm(CO ~ AO)
reg2 <- lm(AO ~ CO)
reg2
plot(CO,AO,  col = "blue", main = "Control Out PLOTTED AGAINST Anger Out", xlab = "CO", ylab = "AO")
abline(lm(AO ~ CO))

summary(reg2)

9^0.5
16^0.5
