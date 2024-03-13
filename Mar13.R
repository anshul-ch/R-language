# Cancer dataset
{
dataset <- read.csv(file.choose())
View(dataset)                                                # view the dataset into another tab
str(dataset)                                                 # overall structure of the dataset
table(dataset$diagnosis)                                     # groups/ subclasses in diagnosis column
summary(dataset)                                             # summary of the columns
colnames(dataset)[1] <- "Patient_Id"                         # change the name of column to Patient_Id
range(dataset$texture_mean)                                  # range of values in texture_mean column
min(dataset$texture_mean)                                    # min of texture_mean column
max(dataset$texture_mean)                                    # max of texture_mean column
sum(is.na(dataset))                                          # total of null values in dataset
dataset <- dataset[1:32]                                  # only take 1-32 columns of the dataset
hist(dataset$texture_mean)                                   # histogram for the dataset texture_mean column
plot(dataset$texture_mean)                                   # scatter graph of dataset texture_mean column
sum(complete.cases(dataset))                                 # to show where there is no single null value
}
