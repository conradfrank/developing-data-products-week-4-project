library(shiny)
library(maps)
library(ggplot2)

states <- c("", unique(map_data("state")$region))

shinyUI(
  navbarPage("Learn the States of USA",
    tabPanel("Start Learning",
      sidebarPanel(
        "Select a State to highlight:",
        selectInput("selected", "", states, selected = NULL, multiple=FALSE)
      ),
      mainPanel(
        h3("Map of the United States of America"),
        plotOutput("mapPlot")
      )
    ),
    tabPanel(p(icon("info"), "About"),
      mainPanel("This application was developed to help you learn the states of USA. 
                 It allows you to choose a state to highlight on the map. 
                 Use the selector on the left to choose a state, 
                 and the selected state will be hightlighted in red on the map.")
    )
  )
)
