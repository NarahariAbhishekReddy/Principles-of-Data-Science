1Q,
Ans:   The tee stages of reproducible work flow are:</br>
<b>1.	Data Collection </br></br>
2.	Data Processing and </br>
3.	Data Analysis</br>
1.Data Collection:</b></br>
•	In this stage we will convert the excel file into csv file since csv files are convenient for data processing.</br>
•	In the next step we need to store this data and make the folder structure accordingly.</br>
<b>2. Data processing</b></br>
•	It involves data cleaning and checking if there are any null values in the frailty column.</br>
<b>clean_data <- na.omit(frality_data[frality_data$Frailty != 'NA', ])</b>
 
•	After performing all the necessary activities, we are saving the cleaned data into a new csv file.</br>
<b>
Stage 3: Data Analysis</b>
</br>
•	In this step we will be reading clean data into a new variable(clean_data).</br>
  <b>clean_data <- na.omit(frailty_data[frailty_data$Frailty != 'N', ])</b></br>
•	Perform T Test analysis on clean_data field wise to see if there is a significant difference in Age and Grip</br>
    <b>
      test_frailty<-t.test(clean_data$Age, clean_data$Grip, paired = TRUE)</b></br>
•	Saving the output to a text file</br>
      <b>
        capture.output(test_data, file = "D:/Downloads/output.txt")</b></br>
        <hr>
<b> Problem2</b></br>
The three stages of reproducible work flow are:</br>
 <b>
1.	Data Collection </br>
2.	Data Processing and </br>
3.	Data Analysis</br>
1.Data Collection:</br></b>
•	In this stage we will convert the excel file into csv file since csv files are convenient for data processing.</br>
<b>student_data<-read.csv("D:/Downloads/StudentsPerformance.csv")</br>
                           summary(student_data)</b></br>
•	In the next step we need to store this data and make the folder structure accordingly</br>
<b>
2. Data processing</b></br>
•	It involves data cleaning and checking if there are any null values in the frailty column.</br>
<b>map(student_data, ~sum(is.na(.)))</b></br>
•	Since we have no missing values we are saving the original dataset as clean data.</br>
•	After performing all the necessary activities, we are saving the cleaned data into a new csv file.</br>
<b>
Stage 3: Data Analysis</br>
Plot 1:</br>
Scatter plot</b></br>
•	In this plot we are plotting between math and reading score for students we can infer that most of the students scored above 40 in maths and reading</br>
<b>2. Heatmap</b></br>
•	Plotting a heatmap using heatmap() function for reading and writing score of a student</br>
<b>
  •	data1<-matrix(num_clean$writing.score,num_clean$reading.score)</b></br>
  <b>
•	heatmap(data1,data2)</b></br>
<b>
3.Barplot</b></br>
•	Plotting a Barplot using for mathscore of a student</br>
<b>counts <- table(num_clean$math.score)</br>
barplot(counts, main="Math score distribution",
             xlab="Score in maths")</b></br>
<b>4.Box plot</b></br>
•	Plotting a Box plot for reading and writing score of a student</br>
<b>
boxplot(num_clean$reading.score~num_clean$writing.score,data=num_clean, main="Students performance",
xlab="reading_score", ylab="writing_score")</b></br>

<b>5.Quantile-quantile plot</b></br>
•	Plotting a q-q plot for math score of a student</br>
<b>qqnorm(num_clean$math.score)</b></br>
<b>According to me barplot is more appealing since it provides more information of count of students with certain marks</br></b>


