library(shiny)

# Define server logic required to draw a histogram
shinyServer(function(input, output) {
  
  output$distPlot <- renderPlot({
    
    # generate bins based on input$bins from ui.R
    x    <- clim_stations[variable == input$var & station == input$sta, value] 
    bins <- seq(from = min(x, na.rm = T), to = max(x, na.rm = T), length.out = input$bins + 1)
    
    # draw the histogram with the specified number of bins
    hist(x, breaks = bins, col = 'darkblue', border = 'white')
    
  })
  
  output$densityPlot <- renderPlot({
    
    ggplot(data = clim_stations[variable == input$var & station == input$sta], aes(x = value)) +
      geom_density(fill = "slate grey", alpha = 0.5) +
      labs(
        x = 'Precipitation (mm)',
        y = 'Density') +
      theme_minimal()
    
  })
  
  output$densityPlot_mon <- renderPlot({
    
    ggplot(data = clim_stations[month == input$mon & variable == input$var_mon & station == input$sta_mon], aes(x = value)) +
      geom_density(fill = "slate grey", alpha = 0.5) +
      labs(
        x = 'Precipitation (mm)',
        y = 'Density') +
      theme_minimal()
    
  })
  
})

