1Q,
Ans:   The three stages of reproducible work flow are:
1.	Data Collection 
2.	Data Processing and 
3.	Data Analysis
1.Data Collection:
•	In this stage we will convert the excel file into csv file since csv files are convenient for data processing.
•	In the next step we need to store this data and make the folder structure accordingly.
2. Data processing
•	It involves data cleaning and checking if there are any null values in the frailty column.
clean_data <- na.omit(frality_data[frality_data$Frailty != 'NA', ])
•	After performing all the necessary activities, we are saving the cleaned data into a new csv file.

Stage 3: Data Analysis
•	In this step we will be reading clean data into a new variable(clean_data).
clean_data <- na.omit(frailty_data[frailty_data$Frailty != 'N', ])
•	Perform T Test analysis on clean_data field wise to see if there is a significant difference in Age and Grip
test_frailty<-t.test(clean_data$Age, clean_data$Grip, paired = TRUE)
•	Saving the output to a text file
capture.output(test_data, file = "D:/Downloads/output.txt")



