setwd("C:\\Users\\IT24103279\\Desktop\\IT24103279")

branch_data <-read.csv("Exercise.txt")
head(branch_data)

str(branch_data)
# Check column names to confirm that Sales_x1 exists
colnames(df)

# Use the correct column for summary and boxplot
summary(df[["Sales_x1"]])  # Using [[ to avoid errors with non-standard names

# Boxplot with custom colors
boxplot(branch_data$Sales_x1,
        main = "Boxplot of Sales",
        ylab = "Sales",
        col = "lightblue",
        border = "darkblue")


summary(branch_data$Advertising)

IQR_advertising <- IQR(branch_data$Advertising)
IQR_advertising


boxplot(branch_data$Sales_X1,
        main = "Boxplot of Sales",
        ylab = "Sales",
        col = "lightblue",
        border = "darkblue")


find_outliers <- function(x) {
  Q1 <- quantile(x, 0.25)
  Q3 <- quantile(x, 0.75)
  IQR_value <- IQR(x)
  lower_bound <- Q1 - 1.5 * IQR_value
  upper_bound <- Q3 + 1.5 * IQR_value
  outliers <- x[x < lower_bound | x > upper_bound]
  return(outliers)
}

outliers_years <- find_outliers(branch_data$Years_X3)
outliers_years