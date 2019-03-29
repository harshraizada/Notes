#set wd
getwd()

#read data
moods <- read.csv("angry_moods.csv", header=TRUE)
moods

#pre-processing into df for further analysis
angry_df <- data.frame(moods)
angry_df

# Question 10
control_out <- angry_df$Control.Out
hist(control_out)

# Question 11
control_out_mean <- mean(control_out)
control_out_mean

control_out_athletes <- subset(angry_df, Sports == 1, select = c("Control.Out", "Sports"))
control_out_athletes
control_out_athletes_list <- control_out_athletes$Control.Out
mean(control_out_athletes_list)

control_out_nonathletes <- subset(angry_df, Sports == 2, select = c("Control.Out", "Sports"))
control_out_nonathletes 
control_out_nonathletes_list <- control_out_nonathletes$Control.Out
mean(control_out_nonathletes_list)

# Question 17
AE_athletes <- subset(angry_df, Sports == 1, select = c("Anger_Expression"))
AE_athletes

AE_nonathletes <- subset(angry_df, Sports == 2, select = c("Anger_Expression"))
AE_nonathletes

Anger_exp <- angry_df$Anger_Expression
Sport <- angry_df$Sports

boxplot(Anger_exp~Sport,
        main="Anger Expression Index by Sports Participation",
        names = c('Athletes', 'Non-Athletes'),
        ylab = "Anger Expression Index")
# is there a more efficient way to do this?

# Question 18
males <- subset(angry_df, Gender == 1, select = c("Anger_Expression"))
males

females <- subset(angry_df, Gender == 2, select = c("Anger_Expression"))
females

Anger_exp <- angry_df$Anger_Expression
gender <- angry_df$Gender

boxplot(Anger_exp~gender,
        main="Anger Expression Index by Gender",
        names = c('Males', 'Females'),
        ylab = "Anger Expression Index")

# Question 20
control_out <- angry_df$Control.Out
control_in <- angry_df$Control.In

cor(control_out, control_in)
cor.test(control_out, control_in)

# Question 21
anger_out <- angry_df$Anger.Out
cor(anger_out, control_out)
















######### SCRATCH PAPER #####################
https://www.socscistatistics.com/pvalues/pearsondistribution.aspx 
https://stats.stackexchange.com/questions/21596/how-can-i-calculate-a-critical-t-value-using-r
https://stats.stackexchange.com/questions/120199/calculate-p-value-for-the-correlation-coefficient
https://www.socscistatistics.com/pvalues/pearsondistribution.aspx
https://www.cyclismo.org/tutorial/R/pValues.html
https://www.statsdirect.com/help/basics/p_values.htm
http://wikiofscience.wikidot.com/stats:significance-level-cutoff-point
https://cran.r-project.org/web/packages/Hmisc/index.html
https://www.machinelearningplus.com/statistics/statistical-significance-tests-r/
  





bp_ae_sports <- boxplot(data= angry_df$Anger_Expression, subset = angry_df$Sports, main="Anger Expression Index by Sports Participation", 
        xlab="Number of Cylinders", ylab="Miles Per Gallon")

library(ggplot2)
boxplot(angry_df$Anger_Expression, 
        names = c('angry_df$Anger_Expression'),
        main="Anger Expression Index by Sports Participation")

install.packages(raster) 

names <- c((angry_df$Sports))
names
new_names <- unique(names)

value <-  angry_df$Anger_Expression
value
install.packages(Hmisc) 
library(Hmisc)
ggplot(angry_df, aes(x=new_names, y=value, fill=names)) +
  geom_boxplot(alpha=0.4) +
  stat_summary(fun.y=mean, geom="point", shape=20, size=10, color="red", fill="red") +
  theme(legend.position="none") +
  scale_fill_brewer(palette="Set3")

rcorr(control_out, control_in, type="pearson")

#https://www.r-bloggers.com/5-ways-to-subset-a-data-frame-in-r/ 
#https://www.statmethods.net/management/subset.html 
#http://dept.stat.lsa.umich.edu/~jerrick/courses/stat701/notes/sql.html 
#https://stackoverflow.com/questions/12125980/how-to-create-a-new-variable-in-a-data-frame-based-on-a-condition 
#https://www.rdocumentation.org/packages/base/versions/3.5.2/topics/mean 
#https://www.datamentor.io/r-programming/histogram/ 
#https://www.statmethods.net/graphs/boxplot.html 
#https://www.rdocumentation.org/packages/graphics/versions/3.5.2/topics/boxplot
#https://www.datamentor.io/r-programming/box-plot/
#https://www.rdocumentation.org/search?q=boxplot&latest= 
#https://www.r-graph-gallery.com/262-basic-boxplot-with-ggplot2/ 
#https://www.r-graph-gallery.com/269-ggplot2-boxplot-with-average-value/
#https://www.r-graph-gallery.com/boxplot/ 
#https://blog.revolutionanalytics.com/2014/07/magrittr-simplifying-r-code-with-pipes.html
#https://www.rdocumentation.org/packages/graphics/versions/3.5.2/topics/boxplot 
#https://www.statmethods.net/graphs/boxplot.html 

#library(sqldf)
#control_out_athletes <- ifelse(angry_df$Control.Out ==TRUE AND angry_df$Sports== 1)
#control_out_athletes <- angry_df[control_out == TRUE, "Sports"== 1]
#control_out_athletes <- subset(angry_df, angry_df$Sports == '1', select=control_out)

# based on variable values
#control_out_athletes <- angry_df[which(angry_df$Sports == '1' )]
#angry_df