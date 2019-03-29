# Comparison of logicals
TRUE == FALSE

# Comparison of numerics
-6 * 14 != 17 - 101

# Comparison of character strings
"useR" == "user"

# Compare a logical with a numeric
TRUE == 1

#2. Greater and Less Than
# Comparison of numerics
-6 * 5 + 2 >= -10 + 1

# Comparison of character strings
"raining" <= "raining dogs"

# Comparison of logicals
TRUE > FALSE

Instagram
# The linkedin and instagram vectors have already been created as follows
linkedin <- c(16, 9, 13, 5, 2, 17, 14)
instagram <- c(17, 7, 5, 16, 8, 13, 14)

# Popular days
linkedin > 15

# Quiet days
linkedin <= 5

# LinkedIn more popular than instagram
linkedin > instagram




# When does views equal 13?
views == 13

# When is views less than or equal to 14?
views <= 14
##########Logical Operators
# Is last under 5 or above 10?
last < 5 | last > 10

# Is last between 15 (exclusive) and 20 (inclusive)?
last > 15 & last <= 20
# linkedin exceeds 10 but instagram below 10
linkedin > 10 & instagram < 10

# When were one or both visited at least 12 times?
linkedin >= 12 | instagram >= 12

# When is views between 11 (exclusive) and 14 (inclusive)?
views > 11 & views <= 14

attach(mtcars)
li_df<-mtcars
power <- li_df$hp

# Build a logical vector, TRUE if value in second is extreme: extremes
extremes <- power > 200 | power < 50

# Count the number of TRUEs in extremes
sum(extremes)
# List of cars who are in extremes list, beware that index is th emodel of the car
li_df[extremes,]
#a<-which(li_df$hp==extremes)


###IF STATEMENT RECAP
# Variables related to your last day of recordings
medium <- "LinkedIn"
num_views <- 14

# Control structure for medium
if (medium == "LinkedIn") {
  print("Showing LinkedIn information")
} else if (medium == "instagram") {
  # Add code to print correct string when condition is TRUE
  print("Showing instagram information")
} else {
  print("Unknown medium")
}
rm(list=ls())#ls(all.names=TRUE)
gc()






# Control structure for num_views
if (num_views >= 16) {
  print("You're popular!")
} else if (num_views <= 15 & num_views > 10) {
  # Add code to print correct string when condition is TRUE
  print("Your number of views is average")
} else {
  print("Try to be more visible!")
}


#### Final Practice
li <- 15
ins <- 9

# Code the control-flow construct
if (li >= 15 & ins >= 15) {
  sms <- 2 * (li + ins)
} else if (li < 10 & ins < 10) {
  sms <- 0.5 * (li + ins)
} else {
  sms <- li + ins
}


###FOR LOOP
nyc <- list(pop = 8405837, 
            boroughs = c("Manhattan", "Bronx", "Brooklyn", "Queens", "Staten Island"), 
            capital = FALSE)

# Loop version 1
for (info in nyc) {
  print(info)
}

# Loop version 2
for (i in 1:length(nyc)) {
  print(nyc[[i]])
}

# Add if statement with break
if (li > 16) {
  print("This is ridiculous, I'm outta here!")
  break
}

# Add if statement with next
if (li < 5) {
  print("This is too embarrassing!")
  next
}

print(li)


####Break Practice



# dont forget to Initialize ucount


# Print out rcount
tweet <- "Without data, you are just another person with an opinion!" #E. Deming
chars <- strsplit(tweet, split = "")[[1]]

ucount <- 0

# Finish the for loop
for (char in chars) {
  if (char == "u") {
    ucount <- ucount + 1
  }
  if (char == "!") {
    break
  }
}

# Print out rcount
ucount


##WHILE LOOP
# Initialize the speed variable
speed <- 60

# Code the while loop
while (speed > 30) {
  print("Slow down!")
  speed <- speed - 7
}

# Print out the speed variable
speed




# Print the resulting sms to the console
sms

#EXERCISE 2
# Initialize the speed variable
speed <- 60

# Extend/adapt the while loop
while (speed > 30) {
  print(paste("Your speed is", speed))
  if (speed > 48) {
    print("Slow down big time!")
    speed <- speed - 11
  } else {
    print("Slow down!")
    speed <- speed - 6
  }
}

speed <- 88

while (speed > 30) {
  print(paste("Your speed is", speed))
  
  # Break the while loop when speed exceeds 80
  if (speed > 80) {
    break
  }
  
  if (speed > 48) {
    print("Slow down big time!")
    speed <- speed - 11
  } else {
    print("Slow down!")
    speed <- speed - 6
  }
}



#Exercise 4.
# Initialize i as 1 
i <- 1

# Code the while loop
while (i <= 10) {
  print(3 * i)
  if ( (3 * i) %% 8 == 0) {
    break
  }
  i <- i + 1
}
getwd()
