function (arglist)  {
  #Function body
}
sd(c(1,5,6,7))

value<-c(1,5,6,7)
sd(value)

my_own_sd<-sd(value)
my_own_sd

help(sd)
?sd

#Arguement Matching
sd(value,na.rm=FALSE)
# By Position
sd(value)
# By Name
sd(x=value)


value<-c(1,5,6,NA)
sd(value, na.rm = TRUE)
#when you have na.rm  = true it will drop NA 

args(sd)

triple<-function(x){
  y<-3*x
  return(y)
}
triple(6)


mathh<-function(a,b){
  a*b + a/b
}
mathh(4,2)

mathh(4)
#error:  argument "b" is missing, with no default


math_opt<-function(a, b=1){
  a*b + a/b
}

math_opt(4)



math_return <- function(a, b = 1) {
  if(b==0){
    return(0)  #return 0 and exit function
  }
  a*b + a/b  #not reached if b is 0
}
math_return(4,0)
#using return saves a lot of memory--it's kind of like breaking if you have an 
#unwanted value



#PRACTICE 
?mean
#Q1 Calculate the average number of views for both linkedin and instagram and assign the result to avg_li and avg_ins, respectively.
#use these vectors again:

linkedin <- c(16, 9, 13, 5, 2, 17, 14)

instagram<- c(17, 7, 5, 16, 8, 13, 14)

avg_li <- mean(linkedin)
avg_li

avg_ins <- mean(instagram)
avg_ins

mean(x=linkedin)


args(mean)

?mean
#Q2.Calculate the means of the element-wise sum of linkedin and instagram and 
#stor ethe result in a variable avg_sum. Calculate the mean once again but
#use trim=0.2 this time and assign the result to avg_sum_trimmed. Print both

?Reduce
sum <- linkedin + instagram
sum
avg_sum <- mean(sum)
avg_sum

avg_sum_trimmed <- mean(sum, trim=0.2)
avg_sum_trimmed

avg_sum2 <- mean(linkedin+instagram)
avg_sum2

avg_sum3 <- mean(linkedin+instagram, trim = 0.2)
avg_sum3

#need the size and shape to be compatible when you add them togethern


#Q3. 

linkedin <- c(16, 9, 13, 5, NA, 17, 14)

instagram <- c(17, NA, 5, 16, 8, 13, 14)

#Print Basic average of linkedin

mean(linkedin)
#Print Advanced average of linkedin
avg_li2 <- mean(linkedin, na.rm = TRUE)

avg_li2 

mean_abs = mean(abs(linkedin-instagram), na.rm=TRUE)
#Print whether th elements of linkedin have a match in instagram
linkedin %in% instagram


#Q4. Calculate the mean absolute deviation of linkedin from instagram

linkedin <- c(16, 9, 13, 5, NA, 17, 14)

instagram <- c(17, NA, 5, 16, 8, 13, 14)

#Hint. abs(linkedin-instagram)>>absolute deviation

abs_dev <- abs(linkedin-instagram)
mean(abs_dev, na.rm=TRUE)


#Q5
power_two <- function(x) { 
  return(x^2)}

power_two(12)


power_two2 <- function(x) { 
  x^2}
power_two2(12)


power_two2 <- function(x) { 
 utku <- x^2
 return(utku)}
power_two2(12)



sum_absol <- function(x,y) { 
  return(abs(x)+ abs(y))
  } 

sum_absol(-2,3)

sum_absol2 <- function(x,y) { 
  print(abs(x)+ abs(y))
} 
sum_absol2(x=-2,y=3)




power_two <- function(x) {
  y <- x ^ 2
  return(y)
}
power_two(4)
y
x
#y and x are local variables, so they will give you errors 

ls() #list functions and vars
#also true for function argument 

convert_f_to_c <- function(f) { 
  celsius <- (5/9)*(f - 32)
  return(celsius)}

convert_f_to_c(32)

convert_f_to_c(77)



convert_f_to_k <- function(k) { 
  kelvin <- (k + 459.67) *(5/9)
  return(kelvin)}

convert_f_to_k(60)



#########
str
?str
#Compactly Display the Structure of an Arbitrary R Object
#don't use any built in functions for the hw 


#time series
#arima then recurring neural nets

?diff


set.seed(123)
## Create the data
x = rnorm(1000)
x
ts <- cumsum(x)
ts
## Stationary the serie
diff_ts <- diff(ts)

diff_ts
par(mfrow=c(1,2))
print(par(mfrow=c(1,2)))
## Plot the series
plot(ts, type='l')
plot(diff(ts), type='l')

#par(mar = c(1,1,1,1))
?par
?plot


par()
# 4 figures arranged in 2 rows and 2 columns
attach(mtcars)
par(mfrow=c(2,2))
plot(wt,mpg, main="Scatterplot of wt vs. mpg")
plot(wt,disp, main="Scatterplot of wt vs disp")
hist(wt, main="Histogram of wt")
boxplot(wt, main="Boxplot of wt")

par("mar")
#check the margings of your graph

histinfo <- hist(disp)
histinfo


par(mfrow=c(3,1)) 
hist(wt)
hist(mpg)
hist(disp)

#len counts # of rows in vector 
length(mtcars)
#matrix or df returns # of columns 
nrow(mtcars)

#can take the number of rows
length(mtcars[,1])


#indexing data frames 
#tibble 


#1.Compute the square of integer ‘n’ and call the function and passing value 5

rm(square_function)
ls()
rm()
ls()


y<-8
f<-function(x){
  x+y
}
f(5)

library(tibble)
?tibble
data_frame <- tibble(  
  c1 = rnorm(50, 5, 1.5), 
  c2 = rnorm(50, 5, 1.5),    
  c3 = rnorm(50, 5, 1.5),    
)

data_frame

#can switch any df to tibble

#Create c1_norm: rescaling of c1        
data_frame$c1_norm <- (data_frame$c1 -min(data_frame$c1))/(max(data_frame$c1)-min(data_frame$c1))
# show the first five values
head(data_frame$c1_norm, 5)



nominator<-x-min(x)
nominator
#numerator
denominator <- max(x)-min(x)
denominator
normalize<- nominator/denominator
normalize


normalize <- function(x){
  # step 1: create the nominator
  nominator <- x-min(x)
  # step 2: create the denominator
  denominator <- max(x)-min(x)
  # step 3: divide nominator by denominator
  normalize <- nominator/denominator
  # return the value
  return(normalize)
}

normalize(2)

normalize(data_frame$c1)


nrow(airquality)
str(airquality)
summary(airquality)
length(airquality)
 #train test 80/20 usually vs 70 30 
# X_Train, Y_trian, Xtest ytest
#pred= predictive model 





#TRAIN TEST SPLIT

length<-nrow(airquality)
length

total_row <- length*0.8
total_row

split <- 1:total_row
split[1:5] 

train_df <- airquality[split, ] 
head(train_df)

test_df <- airquality[-split, ] 
head(test_df)


if (train ==TRUE){ 
  train_df <- airquality[split, ] 
  return(train_df)     
} else {
  test_df <- airquality[-split, ] 
  return(test_df)      
}


split_data <- function(df, train = TRUE){
  length<- nrow(df)
  total_row <- length *0.8
  split <- 1:total_row
  if (train ==TRUE){ 
    train_df <- df[split, ] 
    return(train_df)      
  } else {
    test_df <- df[-split, ] 
    return(test_df)       
  }
}

?strsplit
strsplit(asterisk)

#PRACTICE 
best_practice <- c('Write', 'programs', 'for', 'people', 'not', 'computers')
asterisk <- "***" # R interprets a variable with a single value as a vector
asterisk

wrap <- function(x, y) { 
  wrap <- paste(x, y, x)
  return(wrap)
}

wrap <- function(x,y){
  wrapped <- c(y,x,y)
  return(wrapped)
}
wrap(best_practice, asterisk)




#######
dry_principle <- c('Don’t', 'repeat', 'yourself', 'or', 'others')

outside <- function(x){ 
  out1 <- x[1] 
  out2 <- x[length(x)]
  paste(out1, out2) 
}
outside(dry_principle)



#write a function that takes 3 inputs 
#create a vector and give names for each element

#concat to vector 
#display(1,2,3, 'amber', 'gabriel', 'robert')
display <- function(x , y , z) { 
  displayz <- c(x,y,z)
  names <- c(a,b,c)
  #dict <- [(names), (displayz)]
  l <- list(names, displayz)
  return(l)
}
display(1,2,3)



display <- function(a = 1, b = 2, c= 3){
  result <- c(a,b,c)
  names(result) <- c("a", "b", "c" )
  return(result)
  }
  

display()
#as.name()