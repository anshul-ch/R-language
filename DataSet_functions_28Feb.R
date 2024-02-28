diabetes <- read.csv("~/Downloads/diabetes.csv")
View(diabetes)
str(diabetes)              # Structure of the dataset
head(diabetes)             # First 6 rows of the dataset
tail(diabetes)            # Last 6 rows of the dataset
summary(diabetes)         # Summary of the dataset
min(diabetes$DiabetesPedigreeFunction)         # Minimum value of the dataset
max(diabetes$DiabetesPedigreeFunction)         # Maximum value of the dataset
diff(range(diabetes$DiabetesPedigreeFunction))      # differnece in the Range of the dataset
mean(diabetes$DiabetesPedigreeFunction)         # Mean value of the dataset
median(diabetes$DiabetesPedigreeFunction)         # Median value of the dataset
sd(diabetes$DiabetesPedigreeFunction)             # Standard deviation of the dataset
var(diabetes$DiabetesPedigreeFunction)             # Variance of the dataset
quantile(diabetes$DiabetesPedigreeFunction)         # Quantile of the dataset

plot(diabetes$DiabetesPedigreeFunction)         # Plot of the dataset

# convert the outcome column into a factor

diabetes$Outcome <- as.factor(diabetes$Outcome)
str(diabetes)

# replace 0 with No and 1 with Yes in the Outcome column

diabetes$Outcome <- factor(diabetes$Outcome, levels = c(0,1), labels = c("No","Yes"))

# first 5 records of the dataset
head(diabetes,5)

