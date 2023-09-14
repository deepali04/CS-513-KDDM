#################################################
#  Purpose    : EDA
#  First Name : Deepali
#  Last Name  : Nagwade
#  CWID       : 	
#################################################


rm(list=ls())

#### 1. Summarizing each column (e.g. min, max, mean ) ####
cancer_data <- read.csv("C:/Users/nagwa/Documents/Stevens Institute of Technology/Semester2/CS513- KDDM/Assignments/breast-cancer-wisconsin.csv",na.strings = {'?'})
summary(cancer_data)



#### 2. Identifying missing values ####

cancer_data[,1:11][cancer_data[,1:11]=="?"] <- NA
is.na(cancer_data$Sample)
is.na(cancer_data$F1)
is.na(cancer_data$F2)
is.na(cancer_data$F3)
is.na(cancer_data$F4)
is.na(cancer_data$F5)
is.na(cancer_data$F6)
is.na(cancer_data$F7)
is.na(cancer_data$F8)
is.na(cancer_data$F9)
is.na(cancer_data$Class)



# 3. Replacing the missing values with the "mean" of the column ####
for(i in 1:ncol(cancer_data)) {                                   
  cancer_data[ , i][is.na(cancer_data[ , i])] <- round(mean(as.numeric(cancer_data[ , i]), na.rm = TRUE))
}


# 4. Displaying the frequency table of "Class" vs. F6####
freqTable <- table(unlist(cancer_data["Class"]), unlist(cancer_data["F6"]))
ftable(freqTable)


# 5. Displaying the scatter plot of F1 to F6, one pair at a time####
plot(cancer_data[,2], cancer_data[,3], main = "F1 vs F2", pch = 20)
plot(cancer_data[,2], cancer_data[,4], main = "F1 vs F3", pch = 20)
plot(cancer_data[,2], cancer_data[,5], main = "F1 vs F4", pch = 20)
plot(cancer_data[,2], cancer_data[,6], main = "F1 vs F5", pch = 20)
plot(cancer_data[,2], cancer_data[,7], main = "F1 vs F6", pch = 20)

# 6. Show histogram box plot for columns F7 to F9
boxplot(cancer_data[8:10])



#Delete all the objects from your R- environment.
rm(list=ls())
cancer_data<- read.csv("C:/Users/nagwa/Documents/Stevens Institute of Technology/Semester2/CS513- KDDM/Assignments/breast-cancer-wisconsin.csv", na.strings = {'?'})

#Remove any row with a missing value in any of the columns.
cancer_data <- na.omit(cancer_data)
colSums(is.na(cancer_data))

