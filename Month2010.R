x=c(1:12)
library(plotly)

Total<-c(3361,644,1538,3437,15544,8809,3599,81,795,207,1051,9,2)
Crimes<-c("Murder","Dacoity","Robbery","Burglary","Theft","Riots","Kidnapping","Kid4Ransom","Rape","RoadDacoity","RoadRobbery","BankDacoity","BankRobbery")
data_df_0<-data.frame(Crimes,Total)
p0<-plot_ly(data_df_0,labels = ~Crimes, values = ~Total,type = "pie",
            textposition = 'inside',
            textinfo = 'label+percent+value',
            insidetextfont = list(color = '#FFFFFF'),
            marker = list(colors = colors,
            line = list(color = '#FFFFFF', width = 1)))%>%
  layout(title = 'Distribution of Crime in year 2010',showlegend = FALSE,
         xaxis = list(showgrid = FALSE, zeroline = FALSE, showticklabels = FALSE),
         yaxis = list(showgrid = FALSE, zeroline = FALSE, showticklabels = FALSE))
p0
htmlwidgets::saveWidget(as_widget(p0), "Month2010_TOTAL_pie.html")




Cognizable<-c(9393,9818,11985,12274,13709,13182,12613,11639,11745,10245,9743,11226)
Months<-c("Jan","Feb","Mar","Apr","May","June","July","Aug","Sep","Oct","Nov"," Dec")
data1<-data.frame(x,Cognizable)

p1 <- plot_ly(data1,
              x=~Months,
              y=~Cognizable,
              name="Cognizable",
              type = "bar",
              xaxis=Months)
p1
htmlwidgets::saveWidget(as_widget(p1), "Month2010_Cognizable_bar.html")


Murder<-c(228,207,255,296,348,345,316,300,276,236,261,293)


Murder_df=data.frame(x,Murder)

p2<-plot_ly(Murder_df,
            x=~Months,
            y=~Murder,
            name="Murder",
            type = "bar",
            xaxis=Months)

p2
htmlwidgets::saveWidget(as_widget(p2), "Month2010_Murder_bar.html")

Dacoity<-c(52,59,57,50,49,48,59,52,55,33,65,65)
Dacoity_df=data.frame(x,Dacoity)
p3<-plot_ly(Dacoity_df,
            x=~Months,
            y=~Dacoity,
            name="Murder",
            type = "bar",
            xaxis=Months)
p3
htmlwidgets::saveWidget(as_widget(p3), "Month2010_Dacoity_bar.html")

Robbery<-c(123,146,117,152,137,156,143,139,121,77,99,128)
Robbery_df=data.frame(x,Robbery)
p4<-plot_ly(Robbery_df,
            x=~Months,
            y=~Robbery,
            name="Murder",
            type = "bar",
            xaxis=Months)
p4
subplot(p1,p2,p3,p4)
