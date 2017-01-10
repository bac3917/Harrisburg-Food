## Welcome to the Harrisburg Food Desert Project

```{r setup, out.width = '\\maxwidth', include=FALSE}
knitr::opts_chunk$set(echo = TRUE)
library(leaflet)
library(RCurl)
food.raw<-getURL("https://raw.githubusercontent.com/bac3917/Harrisburg-Food/master/HarrisburgFood090216.csv")
HBGfood<-read.csv(text=food.raw)

{r leaflet, echo=FALSE}
groupColors=colorFactor(palette = "Greens",domain=HBGfood$Type)
(m3 <- leaflet(HBGfood) %>% addProviderTiles("Thunderforest.Landscape") %>% 
        setView(-76.887877, 40.26976, 14) %>% # map location
        addMarkers(data=HBGfood, popup=HBGfood$Name))
m3
```

More info on creating pages:
http://kbroman.org/simple_site/
