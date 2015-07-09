Data <- data.frame(a=1:20, b= LETTERS[1:20])
write.table(Data, "Data/MainData.csv" ,
            sep = "," , row.names = FALSE)

dir.create("Data/")

# Load repmis
library(repmis)
# Place the URL into the object FinURL
FinURL <- "http://bit.ly/14aS5qq"
# Download data
FinRegulatorData <- source_data(FinURL,
                                sep = "," ,
                                header = TRUE)

