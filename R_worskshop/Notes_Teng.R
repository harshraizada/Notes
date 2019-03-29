?c
cos(5)
TRUE
t
T
true
1+1
pi
Inf
inf

1/0
0/0
Nan+10
NaN+10
log()


x = 1 + 2

x<- 1+2
x


#z = x + y 


x <- c(1,2,3)
c(1,2,3)


a <- c(1,2,3)
a

numeric(5)
rep(1,4)
2:5
1:8


"danny"
'danny'

nchar("danny")
"'danny'"


x <- c(TRUE,2,"three")
x

x[4]
x[3]
x[c(5,3)]


x <- c(1,3,7,2,9,6)
a = x[2:4]
a
x[2:5] <- c(-1,-2) #recycling

x


m <- matrix(0,3,2)
m

j <- matrix(1:6,3,2)
j


v1 <- 1:5
v2 <- 6:10

matrix(0,1,3)
numeric(3)

cbind(v1,v2)
rbind(v1,v3)
rbind(v1,v2)


cbind(m,m)

v1 <- 1:2 
v2 <- c(10,20,30)
v1+v2


m <- matrix(1:16, 4, 4)
m[1,2] 
m
m[2:3,-c(1,4)]
m[,m[1,] >= 6] #rule is inside to outside

m[1,]
m[1,] >= 6

m[,c(F,F,T,T)]

dim(m)
dim(m)[1]
v <- dim(m)
v[1]

m*m #Elementwise multiplication
m %*% m #matrix multiplication

dim(m) <- c(6,1)
m

t(m)

x <- list(1,2,3)
y <- 1:3

x
y

y <- list(x, "stuff")
y

movie <- list(title="Monsters Inc", year=2001, production=c("Walt Disney", "Pixar"))
movie

#1 + 2 
#1 + 2 + 
# just means that your code is missing something 

#press esc to get out of the infinite loop 

movie[1] #list of 1 string

movie[[1]] #string

movie$title

movie[["title"]]

movie[[1]]$production[1]

a = rnorm(50)
a
a[46]
a[[46]]
getwd()

car <- read.csv("car.csv")
car

?read.csv

dim(car)
nrow(car)
str(car)

str(read.csv("car.csv"))
summary(car)
head(car)

car[,4] #matrix column
car[[4]] # list 4th element 
car$Horsepower

hp <- car[1:5]$Horsepower #slow
hp <- car$Horsepower[1:5] # the way


# Bar plot.
barplot(table(car$Drive.Type), # Use table() to tabulate.
        main="Drive Type Distribution of 121 Cars",
        xlab="Drive Type",
        ylab="Count",
        col="steelblue2") # Bar color.


# Boxplot.
boxplot(car$MPG ~ car$SUV, # Group by car$SUV.
        main="MPG of SUV and Non-SUV",
        xlab="Is SUV?",
        ylab="MPG")

library(ggplot2)

ggplot(car, aes(Horsepower, MPG)) + # Start with a data frame.  Define the axes.
  geom_point(aes(size = Weight), alpha=0.5, colour="orange") + # Add more graphic elements.
  geom_smooth(colour="steelblue2") +
  ggtitle("Relationship Between Horsepower and MPG")


LETTERS
letters
#hidden variables

library(dplyr)

car %>% # Special syntax in "dplyr" to pipe one result to another.
  filter(Horsepower > 100) %>%
  group_by(SUV, Drive.Type) %>%
  summarize(count = n(),
            mean.hp = mean(Horsepower),
            mean.mpg = mean(MPG)) %>%
  arrange(desc(mean.hp))

?rpois

#how to burn yourself:
1:5
5:1

diag(c(1,2,3))
diag(c(2))
