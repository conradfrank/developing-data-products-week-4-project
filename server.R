library(shiny)
library(maps)
library(ggplot2)

shinyServer(function(input, output) {
  states <- map_data("state")
  selected <- reactive({
    subset(states, region %in% input$selected)
  })
  output$mapPlot <- renderPlot({
    ggplot(data = states) +
      geom_polygon(aes(x = long, y = lat, group = group), fill = "wheat", color = "black") + 
      coord_fixed(1.3) +
      guides(fill=FALSE) + geom_polygon(data=selected(), aes(x = long, y = lat, group = group), fill = "red")
  })
})
