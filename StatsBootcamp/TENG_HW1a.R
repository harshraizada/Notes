#STATS bootcamp HW1a, ch2, q3 - create box plots
getwd()
chess <- read.csv("HW1_ch2_q3.csv", header=TRUE)
#it's already a df so no need to convert it again

boxplot(chess, 
        las = 2, 
        #par(mar = c(12, 5, 4, 2)),
        names = c('Non-Players', 'Beginners', 'Tournament Players'),
        main="Ability to Remember Chess Positions", 
        #xlab="Player Type", 
        #mtext('Player Type', side = 2, line = 3, cex = 2, font = 3),
        ylab="Total Number of Correctly Remembered Pieces")


#STATS bootcamp HW1a, ch2, q7 - create charts
#eye <- read.csv("HW1_ch2_q7.csv", header=TRUE)
#lbls <- paste("Eye.Color " (eye))

#pie(Number.of.students, labels = Eye.Color, main="Pie Chart of Eye Color")


eye <- data.frame(
  color = c("Brown", "Blue", "Green", "Gray"),
  numstudents = c(11, 10, 4, 1)
)
head(eye)


#STATS bootcamp HW1a, ch2, q7 - create charts
color2 = c("Brown", "Blue", "Green", "Gray")
numstudents = c(11, 10, 4, 1)

#PIE CHART
pie(numstudents, labels = color2, main="Pie Chart of Eye Color")
pct <- round(numstudents/sum(numstudents)*100)
color2 <- paste(color2, pct) # add percents to labels 
color2 <- paste(color2,"%",sep="") # ad % to labels 
pie(numstudents, labels = color2, col=rainbow(length(color)),
    main="Pie Chart of Eye Color")

#HORIZONTAL BAR GRAPH
color3 = c("Brown", "Blue", "Green", "Gray")
barplot(numstudents, main="Horizontal Bar Graph of Eye Color", horiz=TRUE, names.arg=color3 , xlim=c(0,15))

#VERTICAL BAR GRAPH
barplot(numstudents, main="Vertical Bar Graph of Eye Color", names.arg=color3, xlab="Eye Color", ylab="Number of Students", ylim=c(0,15))

#FREQ TABLE W REL FREQS
freq_color <- c("Brown", "Blue", "Green", "Gray", "Total")
freqs <- c(10,11,1,4,26)
rel_freqs_pct <- c((10/26)*100, (11/26)*100, (1/26)*100, (4/26)*100, (26/26)*100)
freq_table <- data.frame(freq_color,freqs,rel_freqs_pct) # A will be rows, B will be columns 
print(freq_table) 




#######
margin.table(freq, 1) # A frequencies (summed over B) 
margin.table(freq, 2) # B frequencies (summed over A)

prop.table(freq) # cell percentages
prop.table(freq, 1) # row percentages 
prop.table(freq, 2) # column percentages
#########















#FREQ TABLE W REL FREQS
# 2-Way Frequency Table 
#color_count <- count(color3)
freq <- table(color3,numstudents) # A will be rows, B will be columns 
freq # print table 

margin.table(freq, 1) # A frequencies (summed over B) 
margin.table(freq, 2) # B frequencies (summed over A)

prop.table(freq) # cell percentages
prop.table(freq, 1) # row percentages 
prop.table(freq, 2) # column percentages
#########
library(ggplot2)
bp <- ggplot(eye, aes(x="color", y="numstudents", fill=color))+geom_bar(width = 1, stat = "identity")
bp

pie <- bp + coord_polar("y", start=0)
pie


#######################################
# CHAPTER 3 #
#######################################

install.packages("moments")

dataset <- c(10, 9, 7, 5, 4, 3, 2, 1, 1, 1, 1, 1)
library(moments)
skewness(dataset)
library(ggplot2)

qplot(dataset, geom = 'histogram', binwidth=1) + xlab('Scores')

mean(dataset)
median(dataset)

###############
install.packages("datasauRus")
#devtools::install_github("lockedata/datasauRus")
library(ggplot2)
library(datasauRus)
ggplot(datasaurus_dozen, aes(x=x, y=y, colour=dataset))+
  geom_point()+
  theme_void()+
  theme(legend.position = "none")+
  facet_wrap(~dataset, ncol=3)



###################
rnorm(5, 3, 1)
rnorm(5, 3, 2)

d1 <- c(1,2,3,4,5)
d2 <- c(0,1.1,2.2,5.5,6.2)


mean(d1)
mean(d2)

median(d1)
median(d2)


mean(d3)

r1 <- c(rnorm(5, 3, 1))
r2 <- c(rnorm(5, 3, 2))

mean(r1)
mean(r2)

r1
r2
median(r1)
median(r2)



d3 <- c(-1,0,1,3,6)
mean(d3)
median(d3)

d4 <- c(-2, -1, 1, 5, 20)
mean(d4)
median(d4)


d5 <- c(15.2, 18.8, 19.3, 19.7, 20.2, 21.8, 22.1, 29.4)
range(d5)
29.4 -15.2
sd(d5)
?sd
?var
var(d5)

d6 <- c(15.2, 18.8, 19.3, 19.7, 20.2, 21.8, 21.2, 29.4)
range(d6)
29.4-15.2
sd(d6)
var(d6)

(10)^(1.65)


d8 <- c(1, 3, 4, 6, 12)
sd(d8)

mean(d8)


nonplayers <- c(22.1, 22.3, 26.2, 29.6, 31.7, 33.5, 38.9, 39.7, 43.2, 43.2)
mean(nonplayers)
median(nonplayers)
mode(nonplayers)
mean(nonplayers, trim = 0.05)
range(nonplayers)
43.2-22.1
sd(nonplayers)
var(nonplayers)

qplot(nonplayers, geom = 'histogram', binwidth=2) + xlab('Nonplayers')


beginners <- c(32.5, 37.1, 39.1, 40.5, 45.5, 51.3, 52.6, 55.7, 55.9, 57.7)
mean(beginners)
median(beginners)
mode(beginners)
mean(beginners, trim = 0.05)
range(beginners)
57.7-32.5
sd(beginners)
var(beginners)

qplot(beginners, geom = 'histogram', binwidth=2) + xlab('Beginners')


tournament <- c(40.1, 45.6, 51.2, 56.4, 58.1, 71.1, 74.9, 75.9, 80.3, 85.3)
mean(tournament)
median(tournament)
mode(tournament)
mean(tournament, trim = 0.05)
range(tournament)
85.3-40.1
sd(tournament)
var(tournament)
qplot(tournament, geom = 'histogram', binwidth=2) + xlab('Tournament Players')



###
# Simple Scatterplot
weekGymHours = c(40, 36, 35, 34, 28, 20, 25, 15, 10, 5)
BodyFat = c(16, 16.5, 16.5, 17, 19, 22, 20, 24, 26, 30)

cor(weekGymHours, BodyFat, method = c("pearson") )

plot(weekGymHours, BodyFat, main="Percent of Body Fat by Number of Hours at the Gym", 
     xlab="Weekly Gym Hours", ylab="Body Fat %", pch=19)


## VARIANCE SUM LAW II
VARtestA = 25
VARtestB = 36
CORRAB = 0.8
VARSUM = VARtestA + VARtestB + ((2 * CORRAB) * sqrt(VARtestA) * sqrt(VARtestB))

## Variance sum Law I 
VARWSUMI = VARtestA + VARtestB

#STATS bootcamp HW1a, ch2, q7 - create charts
color2 = c("Brown", "Blue", "Green", "Gray")
numstudents = c(11, 10, 4, 1)

#PIE CHART
pie(numstudents, labels = color2, main="Pie Chart of Eye Color")
pct <- round(numstudents/sum(numstudents)*100)
color2 <- paste(color2, pct) # add percents to labels 
color2 <- paste(color2,"%",sep="") # ad % to labels 
pie(numstudents, labels = color2, col=rainbow(length(color)),
    main="Pie Chart of Eye Color")

#HORIZONTAL BAR GRAPH
color3 = c("Brown", "Blue", "Green", "Gray")
barplot(numstudents, main="Horizontal Bar Graph of Eye Color", horiz=TRUE,
        names.arg=color3)

#VERTICAL BAR GRAPH
barplot(numstudents, main="Vertical Bar Graph of Eye Color",
        names.arg=color3, xlab="Eye Color", ylab="Number of Students")

#FREQ TABLE W REL FREQS
freq_color <- c("Brown", "Blue", "Green", "Gray", "Total")
freqs <- c(10,11,1,4,26)
rel_freqs_pct <- c((10/26)*100, (11/26)*100, (1/26)*100, (4/26)*100, (26/26)*100)
freq_table <- data.frame(freq_color,freqs,rel_freqs_pct) # A will be rows, B will be columns 
print(freq_table) 



barplot(numstudents, main="Vertical Bar Graph of Eye Color",
        names.arg=color3, xlab="Eye Color", ylab="Number of Students")



VARtestA = 25
VARtestB = 36
CORRAB = 0.8
VARSUM = VARtestA + VARtestB - ((2 * CORRAB) * sqrt(VARtestA) * sqrt(VARtestB))
VARSUM2 = VARtestA + VARtestB + ((2 * CORRAB) * sqrt(VARtestA) * sqrt(VARtestB))
