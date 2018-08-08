setwd("E:/GIT_Hub/Crime_bihar_Stats/")

year2001 <-c(3619,1293,2175,3036,9489,8520,1689,385,746,257,1296,22,18)

year2002 <- c(3634,1259,2236,3172,9792,8775,1948,396,875,252,1323,28,15)

year2003 <- c(3652,1203,2425,2925,10313,8189,1956,335,804,247,1430,14,15)

row_N <- c(1:13)


data <- data.frame(row_N, year2001, year2002, year2003)

library(plotly)


plot_ly(data, x = ~row_N, y = ~year2001, name = 'year2011', type = 'scatter', mode = 'lines+markers')%>%
  add_trace(y=~year2002, names='year2002',mode="lines+markers")%>%
  add_trace(y=~year2003, names='year2003',mode="lines+markers")




Murder <- c(3619,3634,3652,3861,3423,3225,2963,3029,3152,3362,3198,3566,3441,3403,3178,2581,2803)
Dacoity <- c(1293,1259,1203,1297,1191,967,646,640,654,644,556,540,579,538,426,349,325)
Robbery<- c(2175,2236,2425,2909,2379,2138,1729,1536,1619,1538,1381,1266,1521,1600,1640,1410,1594)
Burglary <- c(3036,3172,2925,3191,3166,3529,3254,3343,3566,3437,3629,3758,4193,4674,4518,4511,4776)
Theft<- c(9489,9792,10313,11518,11809,13092,12306,14143,15221,15544,16292,17667,21490,22888,22461,22228,27029)
Riots<- c(8520,8775,8189,9199,7704,8541,7996,8207,8554,8809,9768,10871,11931,13566,13311,11617,11698)
Kidnapping<- c(1689,1948,1956,2566,2226,2301,2092,2735,3142,3602,4211,4737,5506,6570,7127,7324,8972)
Kid4Ransom <- c(385,396,335,411,251,194,89,66,80,72,57,70,70,62,58,37,42)
Rape <- c(746,875,804,1063,973,1083,1122,1041,929,795,934,927,1128,1127,1041,1008,1198)
RoadDacoity <- c(257,252,247,287,224,211,151,146,201,207,194,191,240,264,175,169,165)
RoadRobbery <-c(1296,1323,1430,1875,1310,1251,1109,897,962,1051,1043,1081,1281,1347,1195,1119,1286)
BankDacoity <-c(22,28,14,30,26,15,19,16,7,9,11,5,9,9,9,8,7)
BankRobbery <-c(18,15,15,27,8,5,9,7,2,2,10,6,3,5,5,3,3)
Row_N <- c(2001:2017)

My.data_df <- data.frame(Row_N,Murder,Dacoity,Robbery,Burglary,Theft,Riots,Kidnapping,Kid4Ransom,Rape,RoadDacoity,RoadRobbery,BankDacoity,BankRobbery)

p <- plot_ly(My.data_df ,x = ~Row_N ,y= ~Murder ,name = 'Murder',type= 'scatter' ,mode = 'lines+markers')%>%
  add_trace(y= ~Dacoity,name='Dacoity', type= 'scatter', mode = 'lines+markers')%>%
  add_trace(y=~Robbery , name= 'Robbery', type ='scatter', mode='lines+markers')%>%
  add_trace(y=~Burglary , name= 'Burglary', type ='scatter', mode='lines+markers')%>%
  add_trace(y=~Theft , name= 'Theft', type ='scatter', mode='lines+markers')%>%
  add_trace(y=~Riots , name= 'Riots', type ='scatter', mode='lines+markers')%>%
  add_trace(y=~Kidnapping , name= 'Kidnapping', type ='scatter', mode='lines+markers')%>% 
  add_trace(y=~Kid4Ransom , name= 'Kid4Ransom', type ='scatter', mode='lines+markers')%>%
  add_trace(y=~Rape , name= 'Rape', type ='scatter', mode='lines+markers')%>%
  add_trace(y=~RoadDacoity , name= 'RoadDacoity', type ='scatter', mode='lines+markers')%>%
  add_trace(y=~RoadRobbery , name= 'RoadRobbery', type ='scatter', mode='lines+markers')%>%
  add_trace(y=~BankDacoity , name= 'BankDacoity', type ='scatter', mode='lines+markers')%>%
  add_trace(y=~BankRobbery , name= 'BankRobbery', type ='scatter', mode='lines+markers')%>%
  layout(title = "Crimes VS Years",xaxis = list(title = "Year"),yaxis = list (title = "#Crimes Commited"))


htmlwidgets::saveWidget(as.widget(p), "Crimes_Across_Years.html")

