
#rmaps
# install relevant packages
install.packages("devtools")
library(devtools)
install_github('arilamstein/choroplethrZip@v1.4.0')
library(choroplethrZip)
install.packages("ggplot")
library(ggplot2)
install.packages("RCurl")
library(RCurl)


#open food data

food.raw<-getURL("https://raw.githubusercontent.com/bac3917/Harrisburg-Food/master/HarrisburgFood.csv")
HBGfood<-read.csv(text=food.raw)
head(HBGfood)


#zip zoom   

data(df_pop_zip)
hbgZIPS = c("17101", "17102", "17103", "17104", "17110", "17111", "17120")
Harrisburg<-zip_choropleth(df_pop_zip,
               zip_zoom=c(hbgZIPS),
               title="2012 Harrisburg ZCTA Population Estimates",
               legend="Population",
                num_colors=1,
               reference_map = TRUE)
Harrisburg

FoodMap<-Harrisburg+ geom_point(data=HBGfood, aes(x=HBGfood$Lon, y=HBGfood$Lat), color='red' )

FoodMap
