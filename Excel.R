# Load the library into R workspace.
library("xlsx")

# Read the first worksheet in the file input.xlsx.
data <- read.xlsx("input.xlsx", sheetIndex = 1)
print(data)
print(mtcars)