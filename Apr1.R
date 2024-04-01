{
  # Load necessary libraries
  library(DataExplorer)
  library(ggplot2)
  library(plotly)

  # Read dataset
  dataset <- read.csv(file.choose())  # Assuming 'diabetes.csv' or similar structured file

  # Generate a report (optional, comment out if not needed)
  create_report(dataset)

  # Basic Barplot in R with color
  barplot(dataset$Age, col = "#1b98e0")

  # Horizontal Barplot
  barplot(dataset$Age, horiz = TRUE, col = "blue")

  # Correct approach for dynamically adjusting labels
  # This assumes you want to label each bar differently. Adjust accordingly.
  if (length(dataset$Age) <= 26) {
    labels <- LETTERS[1:length(dataset$Age)]
  } else {
    labels <- paste("Label", 1:length(dataset$Age))
  }
  barplot(dataset$Age, names.arg = labels, col = "#1b98e0")

  # Stacked Barplot with corrected legend
  data <- data.frame(A = c(0.2, 0.4),
                     B = c(0.3, 0.1),
                     C = c(0.7, 0.1),
                     D = c(0.1, 0.2),
                     E = c(0.3, 0.3))
  rownames(data) <- c("Group 1", "Group 2")
  barplot(as.matrix(data), col = c("#1b98e0", "#353436"))
  legend("topright", legend = rownames(data), fill = c("#1b98e0", "#353436"))

  # Grouped Barplot with corrected approach
  barplot(as.matrix(data), beside = TRUE, col = c("#1b98e0", "#353436"))
  legend("topright", legend = colnames(data), fill = c("#1b98e0", "#353436"))

  # Barplot in ggplot2
  # Ensure the dataset is correctly formatted for ggplot2
  # Assuming 'group' should correspond to some categorical variable in your dataset
  # Example correction assuming a categorical variable 'Group' exists in dataset

  data_ggp <- data.frame(Group = rep(LETTERS[1:4], each = 4), Age = runif(16, 18, 35))
  ggplot(data_ggp, aes(x = Group, y = Age, fill = Group)) +
    geom_bar(stat = "identity")

  # Barplot using plotly Package
  # Corrected to match ggplot2 example structure
  plot_ly(data_ggp, x = ~Group, y = ~Age, type = 'bar', color = ~Group)

}
