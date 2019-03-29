# Declare variables of diff types 
# Numeric
x <- 21
class(x)

#String
y  <- "R is cool"
class(y)

#Boolean 
z <- TRUE
class(z)

#First way to declare a var: use the '<-'
name_of_var <- value
#second way to declar4e: use the '=' 
name_of_var = value

#print var x 
x <- 83
x
y <- 10
y

#subtraction
x-y

#VECTORS 
#numerical 
vec_um <- c(1, 10, 49)
vec_um

#char
vec_chr <- c("a", "b", "c")
vec_chr

#bool 
vec_bool <- c(TRUE, FALSE, TRUE)
vec_bool

#can't print out if you don't call it 

#Do arithmetic calc on vectors 
#create vec
vect_1 <- c(1, 3, 5)
vect_2 <- c(2, 4, 6)

#sum
sum_vect <- vect_1 + vect_2
sum_vect

#slice vector
#slice first 5  rows
slice_vect <- c(1,2,3,4,5,6,7,8,9,10 )
slice_vect[1:5]

#Faster way to create adjacent values
c(1:10)
#division
(2+4/3)
#exponentiation 
2^5
#modulo
16%%5

#create vector from 1  to 10 
logical_vec <- c(1:10)
logical_vec > 5

#format is var_name[(cond_statemnt)]




#MATRIX 
#construct matrix w 5 rows, num 1-10 by row = true
matrix_a <-matrix(1:10, byrow = TRUE, nrow=5)
matrix_a

dim(matrix_a)

#concatenate 
matrix_a1 <- cbind(matrix_a, c(1:5))
matrix_a1
dim(matrix_a1)
