#Angela Teng 
#Homework 1 
#Programming for Analytics


#Q1. Sort
# Attach(mtcars)
#Sort dataframe by mpg (ascending) and cyl (descending)
mtcars
attach(mtcars)

df1 <- mtcars[order(mtcars$mpg,-mtcars$cyl),]
df1 


#Q2. Subset
# Attach(mtcars)
#Select cars  whose horsepower (hp) is greater than Chrysler Imperial  and sort the new dataframe by mpg.
#note: we could also have used the subset function here, but I just wanted to try different methods we hadn't seen in class
#i also put how we can do it in subset at the end of this first method,
#eg. Chrysler_hp <- subset(cars, rownames(mtcars) == "Chrysler Imperial")$hp, and so on
#i wanted to use dplyr because in the first class we had discussed how many people today are looking for that skill
?select.list
?dplyr

install.packages("tidyverse")
library(dplyr)

mtcars_df <- data.frame(mtcars)
mtcars_df

#view row and column names
rownames(mtcars)
dimnames(mtcars)

mtcars_rownames <- c(rownames(mtcars))
mtcars_rownames

#add car names
#rownames(mtcars_df)[0] <- "Car"
mtcars_w_names <- data.frame(mtcars_rownames, mtcars_df)
mtcars_w_names

#converting data to tbl class
table_mtcars <- tbl_df(mtcars_w_names)
table_mtcars

chrysler_info <-table_mtcars %>% filter(mtcars_rownames == "Chrysler Imperial")
chrysler_info
#we can now see that hp = 230 

#find cars w hp higher than chrysler
cars_w_higher_hp <- table_mtcars %>% filter(hp >230)
cars_w_higher_hp
class(cars_w_higher_hp)

#sort new df by mpg
index_mpg <- order(cars_w_higher_hp$mpg, decreasing = TRUE)
index_mpg

mpg_descending <- cars_w_higher_hp[index_mpg,]
mpg_descending

####if we want to use the subset method, we can also do the following: 
?subset
chrysler_hp_subset <- subset(mtcars_df, rownames(mtcars_df) == "Chrysler Imperial")$hp
chrysler_hp_subset

cars_w_higher_hp_subset <- subset(mtcars_df, hp > chrysler_hp_subset)
cars_w_higher_hp_subset

#this is ordered by mpg ascending vs earlier's descending order
cars_w_higher_hp_subset[order(cars_w_higher_hp_subset$mpg),]

#Q3. For Loop
#Calculate squared values for 1 to 25.
nums <- c(1:25)
nums

for (i in nums){
  sqr <- i*i
  print(sqr)
}
     
#note that we could also use i^2

#Q4. For Loop
#Calculate first 50 elements from Fibonacci Series [1,1,2,3,5,8,13,21,34….]
#for this question, my final answer is at the end; i also included the thought process i had to reach that answer
#thought process and other iterations
for (i in 0:50){
  for (n in 1:50){
    fib <- i+n}
    print(fib)
}

for (i in 1:50){
  fib <- i + (i-1)
  print(fib)
}

for (i in 1:50){
  i <- i+i
  fib <- (i-1) + (i-2)
  print(fib)
}



for (i in 0:50){ 
  n <- 0 
  m <- 1
  fib <- n + m 
  print(fib)
}

for (i in 0:50){
  i[1] <- 1
  i[2] <- 1
  fib[i] <- fib[i-1] + fib[i-2]
  print(fib)
}

fib <- c()
n1 <- 0
n2 <- 0
for (n in 0:50){
  fib <- function(n) {
    if(n <= 1) {
      return(n)
    }else {
      n1 <- length(fib) - 1
      n2 <- length(fib)
      number <- (fib(n-1) + fib(n-2))
      print(number)
    }
  }
}


fib <- c()
n1 <- 0
n2 <- 0
fib <- function(n) {
  if (n==1) {
    n1 <- 0
  } else {
    n1 <- c(0,1)
    while (length(n1) < n) {
      fib_position <- length(n1)
      n2 <- n1[position] + n1[position-1]
      n1 <- c(n1,n2)
    }
  }
  return(n1)
}

#final solution
#initialize empty vec
fib <- c()
counter_n1 <- 0
counter_n2 <- 0
for (n in 1:50){
  if (n == 1) { 
    #indexing fib so that the nth index will be = n when n==1 
    fib[n] <- n
  } else { 
    #using 2 counters for each number in the sequence eg first and second # 
      counter_n1 <- length(fib) - 1
      counter_n2 <- length(fib)
      fib[n] <- sum(fib[counter_n1:counter_n2])
    }
}

print(fib)

#note, not suer why they are printing in triangles, or if that's simply because fib is a vector and thus priting it out this way is just a function of the sequence


#Note: There are several solutions for this question. Please consider the primitive recursive solution takes a lot of time. 
#You can measure processing time cost as below:
start.time <- Sys.time() 
  
for (n in 0:50){
    fib <- function(n) {
      if(n <= 1) {
        return(n)
      }else {
        number <- (fib(n-1) + fib(n-2))
        print(number)
      }
    }
  }
end.time <- Sys.time() 
time.taken <- end.time - start.time 
time.taken
#Time difference of 0.0127449 secs 

#Q5. While Loop
#You bought a house at price of $700K. 
#If the interest to real estate market in the area increases and the estimated price of 
#house goes above 750K, you may want to sell it. 
#Otherwise, you will keep it. You will generate a random price 
#between 600K and 800K for each quarter as a proxy for the interest to your house 
#(The price can fluctuate between -100K to +100K around 700K after each quarter). 

#Design a while loop and show how many quarters (loops) will it take to sell the house. 
#Hint: There is no specific value for the answer since 
#we generate random values with sample(x, size, replace = FALSE, prob = NULL) in each loop.

# initial price = 700 
# if p > 750 then sell
# else keep 
# generate random price bn 600 and 800 each quarter 
# counter for quarters 
# print counter


initial <- 700000
#interest <- runif(1, 600000, 800000)
interest <- sample(600000:800000, 1)
interest

counter <- 0
total <- initial + interest
interest <- sample(600000:800000, 1)

while (total < 750000) {
  print(total)
  counter <- counter + 1
  print(counter)
}

# run 2 using price instead of initial
price <- 700000
interest <- sample(600000:800000, size = 1, replace = FALSE, prob = NULL )
interest
counter <- 0
price <- price + interest
price

while (price < 750000) {
  counter <- counter + 1;
  print(counter);
  print(price);
  if (price >= 750000) break;
    print(price);
}

# take 3
price <- 700000
counter <- 0
interest <- 0

while (price < 750000) {
  counter <- counter + 1;
  cat('This is quarter number', counter, price);
  interest <- sample(600000:800000, size = 1, replace = FALSE, prob = NULL );
  price <- price + interest;
}


# final answer
set.seed(1)
counter <- 1 #since we're beginning with the first qtr
price <- 700000
while (price > 0) { 
  interest <- sample(-100000:100000, size = 1, replace = TRUE, prob = NULL )
  final_house_price <- price + interest
  counter <- counter + 1
  cat("The current quarter is ", counter) 
  if (final_house_price > 750000) { 
    cat("SELL the house at a price of ", final_house_price)
    break
  } else {
    cat("KEEP the house at a price of ", final_house_price)
  }
}


## SAVING AS PDF FOR SUBMISSION ON CANVAS
install.packages("knitr")
library(knitr)
knitr::stitch('~/Users/angelateng/Dropbox/UCHICAGO_2019/PRE_COURSE/MSCA37010_2/Homework/Teng_HW1.R')

