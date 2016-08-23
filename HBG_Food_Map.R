
#rmaps
# https://github.com/ramnathv/rMaps

HBGfood<-read.csv("C:/bac/R/HarrisburgFood.csv")
head(HBGfood)
dim(HBGfood)

library(rworldmap)
library(rworldxtra)
FoodMap<-getMap(resolution = "high")
plot(FoodMap, xlim = c(-80, -77), ylim = c(39, 43), asp = 1)
points(HBGfood$Lat,HBGfood$Lon, col='blue',cex=10)


library(rgdal)
library(ggplot2)

# PA counties
PAcounties<-readOGR(dsn="//FILESVR01/Research_and_Evaluation_Group/GENERAL/GIS_SHapefiles/PA/Counties2015",layer="PaCounty2015_01")
PAmap<-ggplot() +  geom_polygon(data=PAcounties, aes(x=long, y=lat, group=group), fill=rgb(1,0,0,0.5),color='green')

# rivers.
rivers<-readOGR(dsn="//FILESVR01/Research_and_Evaluation_Group/GENERAL/GIS_SHapefiles/PA_WATER",layer="pennsylvania_water")
PArivers<-ggplot() +  geom_polygon(data=rivers, aes(x=long, y=lat, group=group), color='blue'   )

PAmap
PArivers

FoodMap<-PAmap+ggplot() + geom_point(data=HBGfood, aes(x=HBGfood$Lon, y=HBGfood$Lat),color='blue')
FoodMap
