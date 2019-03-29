#HOMEWORK 3A
#####

#CHAPTER 10
#15
#a <- 5
#s <- 2
miu <- 60
n <- 22
stddev <- 10
error <- qnorm(0.975)*s/sqrt(n)
left <- a-error
right <- a+error
left

pnorm(125, mean = 60, sd = 10, lower.tail=TRUE)

#ci(x, confidence=0.99, alpha=0.01,)
#CHAPTER 12

#8b: Calculate 2-tailed t and p values 
#load data
preferred <- c(12, 7, 11,13, 10)
nonpreferred <- c(7,9,8,10,9)

#step 1 - individual statistic
mean(preferred)
mean(nonpreferred)

sd(preferred)
sd(nonpreferred)

#step 2 - compute the difference between means
statistic <- mean(preferred) - mean(nonpreferred)
statistic

#step 3 - find correlation between preferred and non-preferred
cor(preferred, nonpreferred)

#step 4 - compute estimate of SE from statistics
var1 <- (sd(preferred))*(sd(preferred))
var2 <- (sd(nonpreferred))*(sd(nonpreferred))
var1
var2

n <- 5
n

cor <- cor(preferred, nonpreferred)
cor

SE <- sqrt((var1+ var2 -(2 * sd(preferred) * sd(nonpreferred) * cor ))/n)
SE

#step 5 - find t 
t <- (statistic- 0)/SE 
t

#step 6 - find p 
#pt(q, df) 
#where q = quantile or test stat, and df = degrees of  freedom

pt(t, 4,lower.tail = F)*2

#c: one tailed t-test 
1 - pt(t, 4) 

#9:
MSE <- (var1 + var2)/2
MSE

S <- sqrt((2*MSE)/n)
S

t2 <- statistic / S
t2

#compute p value
#one tailed 
1 - pt(t2, 8) 

#two tailed
pt(t2, 8,lower.tail = F)*2


#CHAPTER 13
m1 <- 36
m2 <- 45

diff <- m2 - m1
diff

sd <- 10 
var_both <- sd*sd
var_both
sd_new <- sqrt((2*var_both)/16)
sd_new

t3 <- diff / sd_new
t3

power.t.test(n=16, delta= 0, sd=sd_new,sig.level=0.05, 
             type="one.sample",alternative="two.sided",strict = TRUE)


1 - pt(t3,15) #one tailed
pt(t3,15,lower.tail = F)*2  #twotailed



###

#step 2 - compute estimate of SE from statistics 




?cov


#cov(mean(preferred), mean(nonpreferred))


Sm <- sqrt(cov/n)
Sm


MSE <- (var1 + var2) /2
MSE

SM1M2 <- sqrt((2*MSE)/n)
SM1M2

t <- SM1M2 /MSE
t







