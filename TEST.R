library(xlsx)
data_df=xlsx::read.xlsx(file.choose(),sheetIndex = 1)

#data_df[,1]
column.names <- data_df[,1]

data_df <- data_df[,c(-1)]

rownames(data_df) <- column.names
t(data_df)

data_df[1,,drop=FALSE]

library(plotly)
plot_ly(data_df,x=~rownames(data_df),y=~X2001)


data <- c(1,2,3,4,5,6,7,8,9)

print(data[1])

myfunc <- function(val=1:9){
  print(data[val])
}

myfunc()
