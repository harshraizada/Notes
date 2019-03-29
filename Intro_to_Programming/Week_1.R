# Declare variables of different types # Numeric
x <- 21
class(x)


# String
y <- "R is Cool" 
class(y)

# Boolean 
z <- TRUE
class(z)

# First way to declare a variable:	use the `<-` 
name_of_variable <- value
# Second way to declare a variable:	use the `=` 
name_of_variable = value
# Print variuable X
x <- 83
x
y<-10
y

#we can do substraction
x-y


#VECTORS
# Numerical
vec_num <- c(1, 10, 49) 
vec_num


# Character
vec_chr <- c("a", "b", "c") 
vec_chr


# Boolean
vec_bool <-	c(TRUE, FALSE, TRUE) 
vec_bool


#Do arithmetic calculations on vectors
# Create the vectors 
vect_1 <- c(1, 3, 5)
vect_2 <- c(2, 4, 6)
# Take the sum of A_vector and B_vector 
sum_vect <- vect_1 + vect_2
# Print out total_vector 
sum_vect


#Slice a vector
# Slice the first five rows of the vector 
slice_vector <- c(1,2,3,4,5,6,7,8,9,10) 
slice_vector[1:5]

# Faster way to create adjacent values 
c(1:10)
 #Division
(2+4)/3
#Exponentiation
2^5
#Modulo
16%%5

# Create a vector from 1 to 10 
logical_vector <- c(1:10) 
logical_vector>5
# format is variable_name[(conditional_statement)]
# Print value strictly above 5 
logical_vector[(logical_vector>5)]

# Print 5 and 6 
logical_vector <- c(1:10)
logical_vector[(logical_vector>4) & (logical_vector<7)]


#MATRIX
# Construct a matrix with 5 rows that contain the numbers 1 up to 10 and byrow =  TRUE 
matrix_a <-matrix(1:10, byrow = TRUE, nrow = 5)
matrix_a
# Print dimension of the matrix with dim() 
dim(matrix_a)

# Construct a matrix with 5 rows that contain the numbers 1 up to 10 and byrow =	FALSE 
matrix_b <-matrix(1:10, byrow = FALSE, nrow = 5)
matrix_b
# matrix_b <-matrix(1:10, byrow = FALSE, ncol=2)
matrix_c <-matrix(1:12, byrow = FALSE, ncol = 3)
matrix_c

dim(matrix_c)

# Concatenate
# concatenate c(1:5) to the matrix_a
matrix_a1 <- cbind(matrix_a, c(1:5))
# Check the dimension
dim(matrix_a1)
matrix_a1
#add more columns
matrix_a2 <-matrix(13:24, byrow = FALSE, ncol = 3)
matrix_a2
#concatenate
matrix_c <-matrix(1:12, byrow = FALSE, ncol = 3)		
matrix_c
matrix_d <- cbind(matrix_a2, matrix_c)
dim(matrix_d)
matrix_d
#rbind append rows
matrix_c <-matrix(1:12, byrow = FALSE, ncol = 3)
matrix_c
# Create a vector of 3 columns
add_row <- c(1:3)
add_row
# Append to the matrix
matrix_c <- rbind(matrix_c, add_row)
# Check the dimension
dim(matrix_c)
# Slice a matrix
matrix_c[1,2] #selects the element at the first row and second column.
matrix_c[1:3,2:3] #results in a matrix with the data on the rows 1, 2, 3 and columns 2, 3,
matrix_c[,1] #selects all elements of the first column.
matrix_c[1,] #selects all elements of the first row.
?rbind
matrix_e <- rbind(matrix_c, add_row, row.names =TRUE)
matrix_e
