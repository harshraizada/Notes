####### WEEK 3 - NOTES 

'''
CONDITIONS
- If-Else Conditions
  - eg: gender columns, want to create  dummy vars  
    - Gender : IS_MALE  --> 1 0 for dummy var for male 
    - the rest of the vars are 0 
    - 2 conditions, can have 3 else




'''
# Create vector quantity
quantity <-  38
# Set the is-else statement
if (quantity > 50) {
  print('You sold a lot, did a good job!')
} else {
  print('keep working on!')  
}

quantity <-  45
if (quantity <40) {
  print('Not enough for today, work harder :(')
} else if (quantity > 40  &quantity <= 50) {
  print('Average day')
} else {
  print('Such a great day!')
}


#food example:
#initialization --> usually take care of this in loops 
category <- 'A'
price <- 25


#products are 8% if A
if (category =='A'){
  cat('A vat rate of 8% is applied.','The total price is',price *1.08)  
} else if (category =='B'){
  
#cat = concatenate
  
  cat('A vat rate of 10% is applied.','The total price is',price *1.10)  
} else {

#category B
  cat('A vat rate of 20% is applied.','The total price is',price *1.20)  
  
#category C = everything else
}


#trying this block with different values
category <- 'B'
price <- 25
if (category =='A'){
  cat('A vat rate of 8% is applied.','The total price is',price *1.08)  
} else if (category =='B'){
  cat('A vat rate of 10% is applied.','The total price is',price *1.10)  
} else {
  cat('A vat rate of 20% is applied.','The total price is',price *1.20)  
}



'''
#FOR LOOPS 
for in in 1:10: 
  = 1^2 
counter = counter + 1



'''

#CAR EXAMPLE

# Create fruit vector
my_brand <- c('Honda', 'Porsche', 'Tesla', 'Mini')
# Create the for statement
for ( i in my_brand){ 
  print(i)
}


?seq
# Create an empty list --> empty memory space to write the list 
listt <- c()
# Create a for statement to populate the list
for (i in seq(1, 4, by=1)) {
#double brackets? 
#i takes 1 
#write it in the first index in the first element in the list = 2 brackets --> deeper to identify value
  #listt[[i]] <- i*i
  listt[i] <- i*i
  #still works, but hiding the 2nd part of the element 
  #these both work if there are no intermediary --> but suggest to use double brackers
  #list initially vector
}
print(listt)

#can check the type using the class function

# 2 VERSIONS OF THIS 

#METHOD 1
primes <- c(2, 3, 5, 7, 11, 13)

# loop version 1
for (p in primes) {
  print(p)
}
#HIDDEN ABSTRACT DATATYPE --> not really there but just using as a pointer
#the first one is faster, since we're not generating indeces here 

# loop version 2
for (i in 1:length(primes)) {
  print(primes[i])
}

length(primes)


# Create a list with three vectors
Shopping <- list(MiniBasket = c('Beer', 'Diaper', 'Juice', 'Bread'), 
                 Money = c(10, 14, 17), purchase = FALSE)
for (p  in Shopping) 
{ 
  print(p)
}

#each iteration is represented (eg elements have varis within them)

# loop version 2
for (i in 1:length(primes_list)) {
  print(primes_list[[i]])
}



nyc <- list(population = 8405837, 
            districts = c("Manhattan", "Bronx", "Brooklyn", "Queens", "Staten Island"), 
            capital = FALSE)


# loop version 1
for (i in nyc) {
  print(i)
}

# Loop version none --> includes variable names -- usually don't need this, only care about value
#showing differnt layers in hierarchy
for (i in 1:length(nyc)) {
  print(nyc[i])
}

# Loop version 2 --> not interested in name of element, only care about value
for (i in 1:length(nyc)) {
  print(nyc[[i]])
}


####LOOPING OVER A MATRIX 
# Create a matrix
mat <- matrix(data = seq(10, 21, by=1), nrow = 6, ncol =2)
# Create the loop with r and c to iterate over the matrix
for (r in 1:nrow(mat)){   
#first iterate over row y,
  for (c in 1:ncol(mat)){
#then iterate over column y
    print(paste("Row", r, "and column",c, "have values of", mat[r,c]))  
  }
}

mat <- matrix(data = seq(10, 21, by=1), nrow = 6, ncol =2)
mat

?ncol #returns # of rows 
?paste #concatenate strings 
?seq #Generate regular sequences

'''
first iteration:
r = 1, c = 1
  print (row 1, column 1 = 10 )

c = inner loop 
next, r =1, c= 2 
  print (16 )

iteration 3: 
r=2, c = 1 
print ( 11)

this is really important in image processing --> divide everything into little squares


'''


linkedin <- c(16, 9, 13, 5, 2, 17, 14)

# Code the for loop with conditionals
for (li in linkedin) {
  if (li > 11) {
    print("I guess you're kind of popular!")
  } else {
    print("Be more visible!")
  }
  print(li)
}

#HOW TO BREAK THE LOOP
'''
- Can use break and next 
PRACTICE
'''

#####rm(list=ls())


for (li in linkedin) {
  if (li > 16) {
    print("This is ridiculous,  I'm outta here")
    break
  } else if (li < 5) {
    print("This is too embarassing")
  }
  print(li)
}





for (li in linkedin) {
  if (li > 16) {
    print("This is ridiculous,  I'm outta here")
    break
  } 
  if (li < 5) {
    print("This is too embarassing")
  }
  print(li)
}


# next = mostly used for text mining 
for (li in linkedin) {
  if (li < 5) {
    print("This is too embarassing")
    next
  }
  print(li)
}




for (li in linkedin) {
  if (li > 16) {
    print("This is ridiculous,  I'm outta here")
    break
  } #else if (li < 5) {
    #print("This is too embarassing")
 # }
  #print(li)
}



for (li in linkedin) {
  if (li > 16) {
    print("This is ridiculous,  I'm outta here")
    break
  } else if (li < 5) {
    print("This is too embarassing")
  }
  #print(li)
}




#########
tweet <- str()
tweet <- str(“Without data, you are just another person with an opinion!”) 

tweet <- as.character(Without data, you are just another person with an opinion!)
#E. Deming 
chars <- strsplit(tweet, split = “”)[[1]]



tweet <- 'Without data, you are just another person with an opinion!'
tweet

chars <- strsplit(tweet, split = '')[[1]]
chars

length(chars)

counter <- 0 

for (i in length(chars)) { 
  if (chars[i] == '!') {
    break }
  else if (chars[i] == 'u') {
    counter <- counter + 1
    print(counter)
  }
}

counter<-0

for (i in (1:length(chars))) { 
  if (chars[i] == '!') {
    break }
  else if (chars[i] == 'u') {
    counter <- counter + 1
    print(counter)
  }
}

#my solution
counter <- 0
for (i in (chars)) { 
  if (i == '!') {
    break }
  else if (i == 'u') {
    counter <- counter + 1
    print(counter)
  }
}


counter <- 0
for (i in (chars)) { 
  if (i == '!') {
    break }
  else if (i == 'u') {
    counter <- counter + 1
  }
}
print(counter)


ucount <- 0 
for (i in 1:length(chars)) { 
  if (chars[i] =="!") {
    break
  }
  else (chars[i] =="u"){
    ucount = ucount + 1}
}
print(ucount)
  
#can be used for sentiment analysis 
#emojis for sentiment analysis 
#attribute strength 
#finance doing sentiment analysis on twitter - positivity score



##WHILE LOOP 
''' 
similar to for loop but keeps running
initialization with while otherwise will loop forever
need to exclusively define counters 

'''


#Create a variable with value 1
speed <- 60

#Create the loop
while (speed > 30){
  
  #See which we are  
  cat('slow down',speed)
  
  #add 1 to the variable begin after each loop
  speed <- speed-7
  print(speed)
}

speed <- 60
while (speed > 30) { 
  print("slow down")
  speed <- speed -7
}

#Create the loop
while (speed > 30){
  cat('slow down big time',speed)
  if (speed > 48) {
    speed <- speed-11
    print(speed, "slow down big time") }}
    else (speed > 30 ){
    cat('slow down big time',speed)
    speed <- speed-7
    print(speed) }



while (speed > 30) { 
    print (paste("Your speed is", speed))
    if (speed > 48) {
      print("slow down big time") }
      else { 
        print("slow down")
        speed <- speed - 6}
  }


i <- seq(1:10)
i
ans <- (3*i)%8

while ((3*i)%%8 != 0){
    print(3*i) }

#my code
i <- 1
while (i < length(seq(1:100))) {
  if ((3*i)%%8 == 0) {
    print(i)
    break
  }
 i <- i+1
}



while (i <= 10) { 
  print( 3 * i)
  if ((3 *i)%%8 ==0){
    break
  }
  i <- i +1
}
print(i)

################
#sample(-10:10)

#seed
set.seed(101)
stock <- 50 
while ((stock > 45) && (stock < 1000)) { 
  cat(stock, "keep in portfolio")
  stock <- stock + sample(-10:10)
  }
  if (stock <= 45 ) {
    cat(stock,"short it")
    print(length(stock))
    break
    }




set.seed(123)
stock <- 50 
counter <- 0
price <-50
while (price > 45){ 
price <- stock + sample(-10:10, 1)
print(price)
counter <- counter+1
}





