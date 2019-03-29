############################################
###########Categorical Variables############
############################################

#create gender vector
gender_vector <- c("Male", "Female", "Female", "Male", "Male")
class(gender_vector)
#class - what is the variable type

#convert gender vector to a factor
factor_gender_vector <- factor(gender_vector)
class(factor_gender_vector)
# factor means we're turning the gender vector into a factor vector
# https://www.rdocumentation.org/packages/base/versions/3.5.2/topics/factor 
?factor

#Nominal Categorical Variable 
#create color vec 
color_vector <- c('blue', 'red', 'green', 'white', 'black', 'yellow')
#convert vec to factor 
factor_color <- factor(color_vector)
factor_color

?sink
?closeAllConnections
#factors = category

#Ordinal Categorical Variable
day_vector <- c('evening', 'morning', 'afternoon', 'midday', 'midnight', 'evening')
#convert day vector to fact w ordinal level eg factoring in diff bn them 
factor_day <- factor(day_vector, order=TRUE, levels = c('morning', 'midday', 'afternoon', 'evening', 'midnight'))
#create day vector first
#put true in order to specify that these vars are ordered
#the levels of this order is another vec
factor_day

summary(factor_day)
# 2 evening - this means that 2 instances of evening showed up 


############################################
###########Continuous Variables#############
############################################

#mtcars - embedded ds im r
dataset <- mtcars
class(dataset$mpg)
# syntax: df$column
?class

# Dataframes
?data.frame
#name is not categorical 
#packages

# Create a, b, c, d variables
a <- c(10,20,30,40)
b <- c('book', 'pen', 'textbook', 'pencil_case')
c <- c(TRUE,FALSE,TRUE,FALSE)
d <- c(2.5, 8, 10, 7)
# Join the variables to create a data frame
df <- data.frame(a,b,c,d)
df
#include all the vars to be located in the df 

# create a string of double-precision values
dbl_var <- c(1, 2.5, 4.5)  
dbl_var
# placing an L after the values creates a string of integers
int_var <- c(1L, 6L, 10L)
int_var

names(df) <-c('ID', 'items', 'store', 'price')
df

df <- data.frame(ID,Item,Store,Price) #but first need to define the vectors as these names

#returning values from a dataframe 
df[1,2] #book
df[,1]
#select entire columns from 2 rows
df[1:2,]
#select rows 1 to 3 and columns 3 to 4
df[1:3,3:4]
df[,c('ID','store')]

df <- mtcars
attach(mtcars)
detach(mtcars)
#dataset now attached in our environment --> is now cached in the memory 

str(df)
head(df)
tail(df)
?mtcars


df[,c('ID','store')]
#appending columns
pfa<-c(10,35,36,4)
df$new<-pfa
df
#new column on the right 
df$ID
subset (df,subset=price>5)



# Create a, b, c, d variables
ID <- c(10,20,30,40)
Item <- c('book', 'pen', 'textbook', 'pencil_case')
Store <- c(TRUE,FALSE,TRUE,FALSE)
Price <- c(2.5, 8, 10, 7)
# Join the variables to create a data frame
df <- data.frame(ID,Item,Store,Price)
df

pfa<-c(10,35,36,4)
df$new<-pfa
df

subset (df,subset=Price>5)

#indexing is important 
#find item = pen and price > 10

#identify index of value in item pen 
subset (df[2],subset=Price==8)


index <- which(df$Item=='pen')
index

b<-df$Price[index]
b

index2 <- which(df$Item=='textbook')
index2
c<-df$Price[3]
c
?which




###### PRACTICE #######
# Definition of vectors
name <- c("Mercury", "Venus", "Earth", "Mars", "Jupiter", "Saturn", "Uranus", "Neptune")
type <- c("Terrestrial planet", "Terrestrial planet", "Terrestrial planet", 
          "Terrestrial planet", "Gas giant", "Gas giant", "Gas giant", "Gas giant")
diameter <- c(0.382, 0.949, 1, 0.532, 11.209, 9.449, 4.007, 3.883)
rotation <- c(58.64, -243.02, 1, 1.03, 0.41, 0.43, -0.72, 0.67)
rings <- c(FALSE, FALSE, FALSE, FALSE, TRUE, TRUE, TRUE, TRUE)

#Question: Which items are cheaper than pen? 

ID <- c(10,20,30,40)
Item <- c('book', 'pen', 'textbook', 'pencil_case')
Store <- c(TRUE,FALSE,TRUE,FALSE)
Price <- c(2.5, 8, 10, 7)
df3 <- data.frame(ID,Item,Store,Price)

#method 1

planet <- data.frame(name, type, diameter, rotation, rings)
planet
#what are the planets smaller than eart
earth_index <- which(planet$name=='Earth')
earth_index
#index = 3

subset(planet[3], subset=planet$diameter<planet$diameter[earth_index])


#method 2
planets <- data.frame(name, type, diameter, rotation, rings)
ind <- which(planets$name =='Earth')
b <- planets$diameter[ind]
b
planets
ind
subset(planets, subset=diameter<b)
#note 2 subsets 



###SORTING
#bubble sort 
#largest bubbles up
#stops when no pairs to swap 

#merge sort 
#divide and conquer


#high freq trading
sort(x, decreasing = FALSE, na.last = TRUE)
#na.last = TRUE put mising values in the last 

a <- c(100, 10, 1000)
order(a)
#just index
a[order(a)]
#actual sort
#will other columns reshuffle as well
#order by --> similar to sql 

order(planet$name)
planet$name[order(planet$diameter)]

planet$diameter[order(planet$diameter)] 

sorted_diam_planets <- sort(planets$diameter, decreasing = FALSE, na.last = TRUE)
sorted_diam_planets


idexes <- order(planets$diameter)
idexes
planets[idexes,]

#assign to a new dataframe


#sort mt cars by mpg (descending) then cylinder (ascending)
mtcars

mpg_index <- order(mtcars$mpg, decreasing= FALSE)
mpg_index

index_ascending <- mtcars[mpg_index,]
index_ascending 

mpg_cylinder <- order(index_ascending$cyl, decreasing = TRUE)
mpg_cylinder

mpg_final <- index_ascending[mpg_cylinder,]
mpg_final

### one command
mpg_index_2 <- mtcars[order(mtcars[order(mtcars$mpg, decreasing= TRUE),]$cyl, decreasing=FALSE),]
mpg_index_2

## 
mpg_index <- order(mtcars$mpg)
mtcars2 <- mtcars[mpg_index,]
cyl_index <- order(mtcars2$cyl, decreasing = TRUE)
mtcars3 <- mtcars2[cyl_index]

?order

df <- mtcars[order(mtcars$mpg,-mtcars$cyl),]
df

df <- mtcars[order(mtcars$mpg,-mtcars$cyl, -mtcars$hp),]
df

#nested sorting, index sort

#lists
#elements includes arguments 

#can put a dataframe into a list
vec <- 2:6
mat <- matrix(1:10, ncol = 5)
df <- EuStockMarkets[1:10,]
lst <- list(vec,mat,df)
lst

lst[[3]]
#can change the names of the element 

my_list <-list(my_vector=vec, my_matrix=mat, my_df=df)
my_list


my_df <- mtcars[1:10]
#155 N HARBOR DR 8;30