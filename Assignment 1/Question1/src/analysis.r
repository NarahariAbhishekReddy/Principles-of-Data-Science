library("dplyr")
clean<-data.frame(clean_data)
#selecting data only with numeric values
num_clean<-select_if(clean, is.numeric)
#plot1 
#plotting a scatter plot
plot(x = num_clean$math.score,y = num_clean$reading.score,
     xlab = "Mathscore",
     ylab = "reading score",
     main = "mathscore vs readingscore"
)



#plot2
#Heatmap for reading and writing score
library(ggplot2)
library(dplyr)
data1<-matrix(num_clean$writing.score,num_clean$reading.score)
heatmap(data1,data2)
#plot 3
#Plotting a bar plot 
counts <- table(num_clean$math.score)
barplot(counts, main="Math score distribution",
        xlab="Score in maths",ylab="number of students")
#Plot4
#plotting a box plot
boxplot(num_clean$reading.score~num_clean$writing.score,data=num_clean, main="Students performance",
        xlab="reading_score", ylab="writing_score")
#plot5
#plotting a QQplot
qqnorm(num_clean$math.score)
