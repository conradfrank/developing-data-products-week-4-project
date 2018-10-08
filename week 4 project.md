Developing Data Products Week 4 Project
========================================================
author: Yurong Li
date: October 8, 2018
autosize: true

Project Overview
========================================================

The objective of this project is to develop a **web application** with **shiny** package in r. 

The application I developed is a tool that can help you learn the names of the states of USA. 

User's Guide
========================================================

- The web app interface includes the "**Start Learning**" and "**About**" tabs
- Under the "**About**" tab, the user can find the instructions on how to use the application
- Under the "**Start Learning**" tab, the user can use the selector on the left side to choose a state name, and the selected state will be highted in red on the map of the USA on the right side
- The application uses the **maps** and **ggplot2** packages to display the map
- The application is hosted on Rstudio's shiny server on cloud (shinyapps.io)

Key Code of the APP
========================================================


```r
library(maps)
library(ggplot2)
states <- map_data("state")
ggplot(data = states) +
  geom_polygon(aes(x = long, y = lat, group = group), fill = "wheat", color = "black") + 
  coord_fixed(1.3) + guides(fill=FALSE)
```

![plot of chunk unnamed-chunk-1](week 4 project-figure/unnamed-chunk-1-1.png)

References
========================================================

- Application URL: 
  https://liyurong900305.shinyapps.io/week-4-project/
- Github Repository: 
  https://github.com/liyurong900305/developing-data-products-week-4-project
