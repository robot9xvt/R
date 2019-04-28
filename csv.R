setwd("D:\\R")
data <- read.csv("input.csv")
print(data)

print(is.data.frame(data))
print(ncol(data))
print(nrow(data))

# Get the max salary from data frame.
sal <- max(data$salary)
print(sal)

# Get the person detail having max salary.
retval <- subset(data, salary == max(salary))
print(retval)

retval <- subset( data, dept == "IT")
print(retval)