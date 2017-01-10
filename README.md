## Welcome to the Harrisburg Food Desert Project


### Markdown

Markdown is a lightweight and easy-to-use syntax for styling your writing. It includes conventions for

```markdown
```{r setup, out.width = '\\maxwidth', include=FALSE}
knitr::opts_chunk$set(echo = TRUE)
library(leaflet)
library(RCurl)
food.raw<-getURL("https://raw.githubusercontent.com/bac3917/Harrisburg-Food/master/HarrisburgFood090216.csv")
HBGfood<-read.csv(text=food.raw)

```


```{r leaflet, echo=FALSE}
groupColors=colorFactor(palette = "Greens",domain=HBGfood$Type)
(m3 <- leaflet(HBGfood) %>% addProviderTiles("Thunderforest.Landscape") %>% 
        setView(-76.887877, 40.26976, 14) %>% # map location
        addMarkers(data=HBGfood, popup=HBGfood$Name))
m3

```

For more details see [GitHub Flavored Markdown](https://guides.github.com/features/mastering-markdown/).

### Jekyll Themes

Your Pages site will use the layout and styles from the Jekyll theme you have selected in your [repository settings](https://github.com/bac3917/Harrisburg-Food/settings). The name of this theme is saved in the Jekyll `_config.yml` configuration file.

### Support or Contact

Having trouble with Pages? Check out our [documentation](https://help.github.com/categories/github-pages-basics/) or [contact support](https://github.com/contact) and we’ll help you sort it out.
