{
  dataset <-read.csv(file.choose())
  barplot(dataset$lot_size, col="blue", xlab = "lot size")   # bar graph
  values <- c(0.4,1.5,6.2,0.5,0.8,1.2,1.4,0.6, 1.1,1.3)
  group <- LETTERS[1:5]
  barplot(values, names.arg = group)                         # give names to the bars
  data <- c()
  for(i in 1:10){
    data[i] <- as.integer(readline("Enter matrix element: "))
  }
  matrix1 <- matrix(data, nrow = 2, ncol = 5, byrow = TRUE)
  rownames(matrix1) <- c("Goup1", "Group2")                 # give names to the rows
  colnames(matrix1) <- c("Column1", "Column2", "Column3", "Column4", "Column5")       # give names to the columns
  barplot(matrix1, col = c("red", "blue"))
  barplot(matrix1, col = c("red", "blue"), names.arg = group)
  barplot(matrix1, col = c("red", "blue"), names.arg = group, beside = TRUE)        # beside = TRUE will plot the bars side by side
  legend("topleft", legend = c("Group1", "Group2"), fill = c("red", "blue"), cex = 0.5)  # add legend to the plot

}