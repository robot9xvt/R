library(odbc)
library(RSQLServer)
con <- dbConnect(odbc(),
                 Driver = "SQL Server",
                 Server = "172.30.35.23",
                 Database = "DCMStar",
                 UID = "sa",
                 PWD = rstudioapi::askForPassword("p@ssw0rd"),
                 Port = 1433)
dbListTables(con)
# Query the "actor" tables to get all the rows.
result = dbSendQuery(con, "select getdate()")

# Store the result in a R data frame object. n = 5 is used to fetch first 5 rows.
data.frame = fetch(result, n = 1)
print(data.fame)