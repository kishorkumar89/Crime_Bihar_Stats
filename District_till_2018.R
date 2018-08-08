setwd("E:/GIT_Hub/Bihar_crime_Statis/")
Months<-c("Jan","Feb","Mar","Apr","May","June","July","Aug","Sep","Oct","Nov"," Dec")
Year=as.character(c(2008:2017))
library(plotly)

PATNA_MURDER_2003 <- c(25,28,36,35,62,48,42,40,40,47,42,42)
PATNA_MURDER_2004 <- c(37,46,53,46,61,47,42,39,47,43,40,41)
PATNA_MURDER_2005 <- c(37,32,39,30,46,40,35,35,33,32,31,46)
PATNA_MURDER_2006 <- c(36,41,32,31,40,29,34,33,26,29,26,30)
PATNA_MURDER_2007 <- c(24,17,29,33,23,28,26,28,28,25,28,31)
PATNA_MURDER_2008 <- c(25,25,43,27,28,32,25,29,26,39,17,25)
PATNA_MURDER_2009 <- c(22,32,29,25,26,38,26,23,23,27,27,16)
PATNA_MURDER_2011 <- c(15,27,11,16,32,33,25,18,14,26,17,14)
PATNA_MURDER_2012 <- c(26,26,31,30,31,37,29,28,28,33,32,25)
PATNA_MURDER_2013 <- c(21,26,28,20,28,27,26,23,22,19,24,22)
PATNA_MURDER_2014 <- c(23,25,31,29,31,41,30,31,19,20,26,11)
PATNA_MURDER_2015 <- c(15,24,30,22,30,34,29,36,22,27,16,29)
PATNA_MURDER_2016 <- c(27,19,24,16,18,19,26,20,23,24,22,23)
PATNA_MURDER_2017 <- c(13,20,21,12,28,26,20,23,25,25,23,30)

PATNA_MURDER_ACROSS_YEARS <- data.frame(Months,PATNA_MURDER_2003,
                                        PATNA_MURDER_2004,
                                        PATNA_MURDER_2005,
                                        PATNA_MURDER_2006,
                                        PATNA_MURDER_2007,
                                        PATNA_MURDER_2008,
                                        PATNA_MURDER_2009,
                                        PATNA_MURDER_2011,
                                        PATNA_MURDER_2012,
                                        PATNA_MURDER_2013,
                                        PATNA_MURDER_2014,
                                        PATNA_MURDER_2015,
                                        PATNA_MURDER_2016,
                                        PATNA_MURDER_2017)

PATNA_MURDER <-
plot_ly(PATNA_MURDER_ACROSS_YEARS,x=~Months,y=~PATNA_MURDER_2003,name='PATNA MURDER 2003',type='scatter',mode = 'lines+markers',xaxis=Months)%>%
  add_trace(y=~PATNA_MURDER_2004,name='PATNA MURDER 2004',type='scatter',mode='lines+markers')%>%
  add_trace(y=~PATNA_MURDER_2005,name='PATNA MURDER 2005',type='scatter',mode='lines+markers')%>%
  add_trace(y=~PATNA_MURDER_2006,name='PATNA MURDER 2006',type='scatter',mode='lines+markers')%>%
  add_trace(y=~PATNA_MURDER_2007,name='PATNA MURDER 2007',type='scatter',mode='lines+markers')%>%
  add_trace(y=~PATNA_MURDER_2008,name='PATNA MURDER 2008',type='scatter',mode='lines+markers')%>%
  add_trace(y=~PATNA_MURDER_2009,name='PATNA MURDER 2009',type='scatter',mode='lines+markers')%>%
  add_trace(y=~PATNA_MURDER_2011,name='PATNA MURDER 2011',type='scatter',mode='lines+markers')%>%
  add_trace(y=~PATNA_MURDER_2012,name='PATNA MURDER 2012',type='scatter',mode='lines+markers')%>%
  add_trace(y=~PATNA_MURDER_2013,name='PATNA MURDER 2013',type='scatter',mode='lines+markers')%>%
  add_trace(y=~PATNA_MURDER_2014,name='PATNA MURDER 2014',type='scatter',mode='lines+markers')%>%
  add_trace(y=~PATNA_MURDER_2015,name='PATNA MURDER 2015',type='scatter',mode='lines+markers')%>%
  add_trace(y=~PATNA_MURDER_2016,name='PATNA MURDER 2016',type='scatter',mode='lines+markers')%>%
  add_trace(y=~PATNA_MURDER_2017,name='PATNA MURDER 2017',type='scatter',mode='lines+markers')%>%
  layout(title = "Murders in Patna Across Years",xaxis = list(title = "Months"),yaxis = list (title = "# Murders"))

htmlwidgets::saveWidget(as_widget(PATNA_MURDER), "PATNA_MURDER_Charts.html")  




  


