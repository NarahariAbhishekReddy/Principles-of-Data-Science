student_data<-read.csv("D:/Downloads/StudentsPerformance.csv")
summary(student_data)
library(tidyverse)
#checking multiple columns for the presence of NA values
map(student_data, ~sum(is.na(.)))
clean_data<-read.csv("D:/Downloads/StudentsPerformance.csv")
write.csv(clean_data,"D:/Downloads/cleandata.csv")
summary(clean_data)
